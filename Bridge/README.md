# Bridge

This is an API server that would work as bridge between the board and mobile application. Currently the application is taking the led data from `led_states.json` which would be replace with actual data from LED Board in the future.

## Endpoints
```
GET /get-all-devices
```
Returns all devices with all data
```
GET /get-device/{led_id}
```
Returns data for specific device
```
POST /set-device/{led_id}
```
Set data for specific device
## Usage
You need to have uvicorn installed in order to start the server and then you can start the server with following command:
```bash
uvicorn main:app --reload
```
## License

[MIT](https://choosealicense.com/licenses/mit/)
