# IoT/B/S/H Device Controller
An application for controlling your IoT/BSH devices. Add sensors and output devices via simple mobile app, make connections and relationship between them. Many comprehensive functions and animations.

## Inspiration for this project
We wanted to make really good looking transitions and controlled with sensors, have nice looking app with simple controls and support for any IoT devices and making connections between them.
## What it does
We managed to get the basic script working and a mobile app made in python with tkinter. Mobile app connects to server that emulates led device which we could program later with an actual physical led device.
## How we built it
We used STM32Cube IDE and an example bridge program for other board. We needed to rewrite the driver for other device to work with our device which was quite a challenge actually. Secondly for the bridge and controlling part we used python with FastAPI and that API is used by mobile app made in python with Kivy. In the app you can add IoT devices, control them, enable transitions and other features.
## Challenges we ran into
Probably one of the hardest challenge of this project was getting the driver to work and communicate with python server on computer (which we didn't manage to do). However we managed to make the driver communicate with the LED Extension Board and make some simple light animations.
## Accomplishments that we're proud of
We are proud of actually managing to get the driver to work and communicate with the LED Extension Board.
## What we learned
We learned that making drivers from scratch is definitely not an easy task :). But in future it will maybe not take us this long to make another driver.
## What's next for B/S/H Device controller
There could be an comprehensive simple mobile app that you could add your IoT devices to control them with some tools and functions make connections and relationships between your IoT devices and lots more.
