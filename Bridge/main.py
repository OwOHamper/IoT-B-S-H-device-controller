from fastapi import FastAPI
import json

app = FastAPI()

def load_led_data():
    # Load the LED state JSON file
    with open("led_states.json", "r") as f:
        return json.load(f)

led_states = {}
led_states = load_led_data()


@app.get("/get-all-devices")
async def get_all_devices():
    global led_states
    led_states = load_led_data()
    return led_states

# Define the API endpoints
@app.get("/get-device/{led_id}")
async def get_led_state(led_id: str):
    global led_states
    led_states = load_led_data()
    return led_states["devices"].get(led_id)

@app.post("/set-device/{led_id}")
async def set_led_state(led_id: str, led_data: list):
    global led_states
    led_states = load_led_data()
    led_states["devices"][led_id]["data"] = led_data
    print(led_data)

    with open("led_states.json", "w") as f:
        json.dump(led_states, f)
    return {"message": "LED state updated successfully."}
