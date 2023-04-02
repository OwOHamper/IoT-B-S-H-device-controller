from kivymd import uix_path
from kivy.lang import Builder
import os
from kivy.clock import Clock
from kivy.core.window import Window
from kivy.properties import StringProperty, ObjectProperty, NumericProperty, BooleanProperty, ListProperty
from kivymd.app import MDApp
from kivymd.uix.screenmanager import ScreenManager
from kivymd.uix.screen import Screen
from kivy.uix.popup import Popup
import json
from functools import partial
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDRectangleFlatButton,MDRectangleFlatIconButton
from kivymd.uix.boxlayout import BoxLayout
from kivymd.uix.floatlayout import MDFloatLayout
from kivymd.uix.dialog import MDDialog
from kivymd.uix.button import MDFlatButton
from kivymd.uix.button import MDIconButton
from kivy.metrics import dp
from kivymd.uix.label import MDLabel
from kivy.graphics import *
from kivy.uix.image import Image
from kivymd.uix.button import MDRectangleFlatButton
import random
import ast
from kivy.utils import platform
from kivymd.uix.snackbar import Snackbar
from kivymd.uix.toolbar import MDTopAppBar
from kivymd.uix.behaviors import RoundedRectangularElevationBehavior
from kivymd.uix.card import MDCard
from kivy.uix.gridlayout import GridLayout
from kivymd.uix.selectioncontrol.selectioncontrol import MDSwitch
from kivy.uix.screenmanager import SlideTransition
from kivy.graphics import Color
from kivymd.uix.bottomnavigation.bottomnavigation import MDBottomNavigationHeader
from kivy.animation import Animation
from kivymd.uix.progressbar import MDProgressBar
from kivymd.uix.button import MDFloatingActionButton, MDRaisedButton
import requests
from kivy.uix.button import Button
from kivy.clock import Clock
from kivymd.uix.pickers import MDColorPicker
from typing import Union
class CustomMDColorPicker(MDColorPicker):
    def __init__(self, callback, **kwargs):
        super().__init__(**kwargs)
        self.callback = callback

    def _select(self, *args):
        self.callback(self.selected_color)
        self.dismiss()



if platform != 'android':
    Window.size = (1170 / 3.3, 2532 / 3.3)
rot=None

from kivy.uix.behaviors import ButtonBehavior
from kivy.uix.widget import Widget
from kivy.graphics import Color, Rectangle
class CustomLEDButton(ButtonBehavior, Widget):
    def __init__(self, color,id, width=None, height=None, **kwargs):
        super(CustomLEDButton, self).__init__(**kwargs)
        self.color = color
        self.id=id
        self.size_hint = (None, None)
        self.width = dp(width) if width else dp(5)
        self.height = dp(height) if height else dp(5)

        with self.canvas:
            Color(*self.color)
            Rectangle(pos=self.pos, size=self.size)
        
        self.bind(pos=self.update_rect, size=self.update_rect)

    def update_rect(self, *args):
        self.canvas.clear()
        with self.canvas:
            Color(*self.color)
            Rectangle(pos=self.pos, size=self.size)

class RaisedButton(MDRectangleFlatIconButton,RoundedRectangularElevationBehavior):
    pass

class ScreenManagement(ScreenManager):


    def __init__(self, **kwargs):
        super(ScreenManagement, self).__init__(**kwargs)
        global rot
        rot=self

class UnclickableMDIconButton(MDIconButton):
    def collide_point(self, x, y):
        return False

class HomeScreen(Screen):    
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.first=False
    def on_enter(self, *args):
       # Clock.schedule_once(partial(MDApp.get_running_app().nemas_testy,self.parent))
        if not self.first:
            Clock.schedule_once(partial(MDApp.get_running_app().loading_config,self.parent))
            self.first=True

class DeviceScreen(Screen):
    pass

class Application(MDApp):
    device_name = StringProperty('#000000')
    #premenne
    def __init__(self, **kwargs):
        #nejaka premenna
        super().__init__(**kwargs)

    def build(self):
        self.theme_cls.material_style = 'M3'
        self.theme_cls.theme_style = "Dark"
        self.sm = ScreenManagement()
        
        return self.sm 
    
    def loading_config(self,sm, *args):
        
        if sm:
            self.root=sm
        self.root.get_screen('shome').ids.mylist.clear_widgets()
        r = requests.get("http://localhost:8000/get-all-devices")
        self.data = r.json()
        for i in self.data['devices'].keys():
            self.icon_color = 'white'

            box = MDFloatLayout(size_hint_y=None, height=dp(70))
            new_item = RaisedButton(
                #elevation=dp(6),
                size_hint=(1, None),
                font_size='18sp',
                icon_size=dp(45),
                pos_hint={
                    "center_x": .5,
                    "center_y": .5
                },
                line_color=[.4, .4, .4, .2],
                text_color="white",
                icon="circle",
                icon_color=[0, 0, 0, 0],
                id=str(i),
                halign='left',
                on_press=lambda x: self.deviceopen(x.id),
                md_bg_color=[.09, .09, .09, 1])
            box.add_widget(new_item)
            label_test = MDLabel(text=f'{i}',
                                 pos_hint={"center_y": .5},
                                 pos=(dp(95), 0))
            box.add_widget(label_test)
            icon=self.data['devices'][i]['type']
            circle = UnclickableMDIconButton(icon=str(icon),
                                  icon_size='50sp',
                                  theme_icon_color="Custom",
                                  pos_hint={"center_y": .5},
                                  pos=(dp(13), 0),
                                  icon_color=self.icon_color,
                                  disabled=False)
            box.add_widget(circle)
            list_length = len(
                self.root.get_screen('shome').ids.mylist.children)

            self.root.get_screen('shome').ids.mylist.add_widget(
                box, index=list_length)

    def flatten(l):
        return [item for sublist in l for item in sublist]
   
    def create_circular_leds(self, cols, rows):
        data = self.data["devices"]['NUCLEO-G0B1RE']["data"][0]
        circlerow=-1
        
        for row in range(rows):
            circlecol=0
            circlerow+=1
            for col in range(cols):
                
                color = [x / 255 for x in data[row][col]]
                btn = MDIconButton(
                    id=";".join([str(circlerow), str(circlecol)]),
                    icon="circle",
                    icon_size=dp(40),
                    theme_text_color="Custom",
                    text_color=color,
                    on_release=self.led_action,
                    size_hint=(None, None),

                )
                self.root.get_screen('sdevice').ids.circular_led_grid.add_widget(btn)
                circlecol+=1
                

   

    def create_rectangular_leds(self, cols, rows):
        data = self.data["devices"]['NUCLEO-G0B1RE']["data"][1]
        rectrow=-1
        for row in range(rows):
            rectcol=0
            rectrow+=1
            for col in range(cols):
                color = [x / 255 for x in data[row][col]]
                btn = CustomLEDButton(id=";".join([str(rectrow), str(rectcol)]),color=color, on_release=self.led_action,height=dp(8.5),width=dp(17))
                self.root.get_screen('sdevice').ids.rectangular_led_grid.add_widget(btn)
                rectcol+=1



    def led_action(self, instance):
        self.current=instance
        color_picker = MDColorPicker(size_hint=(0.9, 0.6),pos_hint= {'center_x': 0.5,'center_y': 0.36})
        color_picker.open()
        if instance=='all':
            color_picker.bind(
                #on_select_color=self.on_select_color,
                on_release=self.colorchange,
            )
        else:
                color_picker.bind(
                #on_select_color=self.on_select_color,
                on_release=self.get_selected_color,
            )

    def colorchange(
        self,
        instance_color_picker: MDColorPicker,
        type_color: str,
        selected_color: Union[list, str],):
        # with open('color.json') as f:
        #     self.colors = json.load(f)
        # pickercolor=self.colors['allpick']
        for cir in self.root.get_screen('sdevice').ids.circular_led_grid.children:
            cir.icon_color=selected_color
        # self.root.get_screen('sdevice').ids.allights.md_bg_color=selected_color
        for row in range(4):
            for col in range(4):
                self.data['devices']['NUCLEO-G0B1RE']['data'][0][row][col]=[i*255 for i in selected_color]
        r = requests.post("http://localhost:8000/set-device/NUCLEO-G0B1RE", json=self.data['devices']['NUCLEO-G0B1RE']['data'])
        
    def get_selected_color(
        self,
        instance_color_picker: MDColorPicker,
        type_color: str,
        selected_color: Union[list, str],):
        self.current.icon_color=selected_color
        if isinstance(self.current, CustomLEDButton):
            self.current.color=selected_color
            self.current.update_rect()
        cformat=[]
        for rgb in selected_color:
            cformat.append(rgb*255)
        if isinstance(self.current, CustomLEDButton):

            row,col=self.current.id.split(';')
            self.data['devices']['NUCLEO-G0B1RE']['data'][1][int(row)][int(col)]=cformat
            r = requests.post("http://localhost:8000/set-device/NUCLEO-G0B1RE", json=self.data['devices']['NUCLEO-G0B1RE']['data'])
        else:
            row,col=self.current.id.split(';')
            self.data['devices']['NUCLEO-G0B1RE']['data'][0][int(row)][int(col)]=cformat
            r = requests.post("http://localhost:8000/set-device/NUCLEO-G0B1RE", json=self.data['devices']['NUCLEO-G0B1RE']['data'])
    def back(self,*args):
        self.root.current='shome'

    def deviceopen(self,id,*args):
        self.device_name=str(id)
        self.root.current='sdevice'
        if id=='NUCLEO-G0B1RE':
            #self.root.get_screen('sdevice').ids.circular_led_grid.clear_widgets()
            self.create_circular_leds(4, 4)

            #self.root.get_screen('sdevice').ids.circular_led_grid.clear_widgets()
            self.create_rectangular_leds(6, 8)

if __name__ == "__main__":
    Application().run() 