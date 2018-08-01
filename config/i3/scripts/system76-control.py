#!/usr/bin/env python2

import os
import gtk
import subprocess

def icon_path(icon_file):
  dir_path = os.path.dirname(os.path.realpath(__file__))
  return os.path.join(dir_path, icon_file)

def selected_graphics_card():
  "Figure out which card is currently running."
  return subprocess.check_output(["system76-power", "graphics"]).rstrip()

def notify(message, icon=""):
  subprocess.call(["notify-send", "-i", icon, message])

def select_power_profile(profile):
  "Select a power profile."
  subprocess.call(["system76-power", "profile", profile])
  notify("Switching to {0} power profile.".format(profile))

def select_graphics_card(card):
  "Select a graphics card."
  icon = icon_path("{0}.png".format(card))
  notify("Switching graphics card to {0} (wait a few seconds) ...".format(card.title()), icon)
  subprocess.call(["system76-power", "graphics", card])
  notify("Switched graphics card to {0}.".format(card.title()), icon)

def update_firmware(data=None):
  "Execute system76-firmware."
  subprocess.call(["system76-firmware", "--reinstall"])

def exit_app(data=None):
  gtk.main_quit()

def make_menu(event_button, event_time, data=None):
  menu = gtk.Menu()

  profiles_submenu = gtk.Menu()
  profiles_item = gtk.MenuItem("Power Profiles")
  profiles_item.set_submenu(profiles_submenu)

  performance_item = gtk.MenuItem("High Performance")
  balanced_item = gtk.MenuItem("Balanced")
  battery_item = gtk.MenuItem("Battery Life")

  profiles_submenu.append(performance_item)
  profiles_submenu.append(balanced_item)
  profiles_submenu.append(battery_item)

  graphics_submenu = gtk.Menu()
  graphics_item = gtk.MenuItem("Graphics")
  graphics_item.set_submenu(graphics_submenu)

  intel_item = gtk.CheckMenuItem("Intel Graphics")
  nvidia_item = gtk.CheckMenuItem("Nvidia Graphics")

  if selected_graphics_card() == "intel":
    intel_item.set_active(True)
  else:
    nvidia_item.set_active(True)

  graphics_submenu.append(intel_item)
  graphics_submenu.append(nvidia_item)

  firmware_item = gtk.MenuItem("Update Firmware")

  exit_item = gtk.MenuItem("Exit")

  #Append the menu items
  menu.append(profiles_item)
  menu.append(graphics_item)
  menu.append(gtk.SeparatorMenuItem())
  menu.append(firmware_item)
  menu.append(gtk.SeparatorMenuItem())
  menu.append(exit_item)

  #add callbacks
  performance_item.connect_object("activate", select_power_profile, "performance")
  balanced_item.connect_object("activate", select_power_profile, "balanced")
  battery_item.connect_object("activate", select_power_profile, "battery")

  intel_item.connect_object("activate", select_graphics_card, "intel")
  nvidia_item.connect_object("activate", select_graphics_card, "nvidia")

  firmware_item.connect_object("activate", update_firmware, "Firmware")

  exit_item.connect_object("activate", exit_app, "Exit")

#Show the menu items
  menu.show_all()

  #Popup the menu
  menu.popup(None, None, None, event_button, event_time)

def on_right_click(data, event_button, event_time):
  make_menu(event_button, event_time)

if __name__ == "__main__":
  icon = gtk.status_icon_new_from_file(icon_path("system76.png"))
  icon.connect("popup-menu", on_right_click)
  gtk.main()
