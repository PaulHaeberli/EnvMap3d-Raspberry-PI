#EnvMap for Raspberry PI

NOTE: 

    This app will only run if the 
    Experimental desktop GL driver is off.
    
    you can change this setting by doing:

        sudo raspi-config
    
        selecting 9 - Advanced Options, then
        selecting AC - GL Driver, then
        selecting No, and restarting

    I have only tested this on Raspberry Pi 3 Model B
    I am working on makeing this work with the desktop
    GL driver running!
    
    I am working on a new version of this that will work
    with the desktop GL driver turned on.
  
    
To Install and Run:

    1. cd into the project directory;
    
        sudo make install

    2. go to the PIXEL application menu and click on "Graphics"

    3. click on "EnvMap3d"

    I'll try to make the source code for this project available soon.


