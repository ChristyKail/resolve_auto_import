# Resolve Auto Import

This tool is mainly designed for DIT and dailies work, where you need to quickly import the contents of a camera card (or multiple camera cards) into a DaVinci Resolve bin, and create a timeline of all clips per camera card.

For cameras like the Alexa 35 this is easy as you can use "Import folder and subfolders into media pool and create bins" option, but for cameras with more complicated folder structures like the Sony Venice or Alexa LF this option creates a lot of unwanted bin structure.

This tool allows you to select any number of camera rolls at the Finder level, and quickly import them into Resolve using a Finder QuickAction.

**Notes:**
* This is MacOS based only, and will only work with the Resolve Studio version as it requires external scripting.
* Tested on MacOS Ventura with Python 3.13.0, and Resolve Studio 19.0.3.

## Installation
Download or git clone the repo, and run the `install.command` file. This will copy the files into your `~/Library/Services` directory. 

You can also just copy it manually to match the following structure:
```
Library
└── Services
    ├── Import into Resolve.workflow
    └── resolve_auto_import
        ├── media_file_extensions.txt
        ├── DaVinciResolveScript.py
        ├── resolve_auto_import.py
        └── resolve_connection.py
```
Now add the workflow to your finder QuickActions.

* Right click on a folder in Finder and go to to Quick Actions, Customise

    <img src="src/install_1.png" width="330"/>

* Select the Import into Resolve checkbox
    
    <img src="src/install_2.png" width="350"/>

## Usage

* Make sure Resolve is open
* Select one or more camera rolls from in Finder, and right click
* Point to Quick Actions, and select Import Into Resolve

    <img src="src/usage_1.png" width="350"/>

* For each folder you had selected, Auto Import will create a named bin, import the contents, and create a timeline of all the clips

    <img src="src/usage_2.png" width="350"/>
  
**Notes:**
* If a folder doesn't have any media files in it, it will be skipped
* The tool will see MXF, MOV, ARX, ARI, R3D, MP4, DPX, EXR, DNG, BRAW, and WAV files, but you can add more to the `media_file_extensions.txt` file.
* The tool will also skip folders if a bin of the same name already exists in the root of the project
