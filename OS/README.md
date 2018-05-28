# GBZ
Gameboy Zero OS documentaion.

* install retropie
* setup ssh with out password and cert only

If you don't have keys yet you can use ssh-keygen and you may need to use ssh-add to add the key to your key ring.

For example if your Pi is at 192.168.1.1

ssh-copy-id pi@192.168.1.1

ssh pi@192.168.1.1

Open up the SSHD config file on the pi via ssh:
sudo mcedit /etc/ssh/sshd_config

Change these parameters to no
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no

Reload SSHD on Pi
sudo /etc/init.d/ssh reload

Now your Pi should be secured.


Add this to the end of config.txt in boot directory to enable sound and configure keys:

dtoverlay=pwm-2chan,pin=18,func=2,pin2=13,func2=4

dtoverlay=gpio-key,gpio=23,keycode=105,label="KEY_LEFT"
dtoverlay=gpio-key,gpio=24,keycode=103,label="KEY_UP"
dtoverlay=gpio-key,gpio=25,keycode=108,label="KEY_DOWN"
dtoverlay=gpio-key,gpio=8,keycode=106,label="KEY_RIGHT"

dtoverlay=gpio-key,gpio=7,keycode=42,label="KEY_L_SHIFT" #select
dtoverlay=gpio-key,gpio=12,keycode=28,label="KEY_ENTER" #start

dtoverlay=gpio-key,gpio=16,keycode=31,label="KEY_S" #X
dtoverlay=gpio-key,gpio=20,keycode=30,label="KEY_A" #Y
dtoverlay=gpio-key,gpio=21,keycode=44,label="KEY_Z" #B
dtoverlay=gpio-key,gpio=26,keycode=45,label="KEY_X" #A

dtoverlay=gpio-key,gpio=5,keycode=16,label="KEY_Q" #LS
dtoverlay=gpio-key,gpio=6,keycode=17,label="KEY_W" #RS

Now, I could not get the generic overlay working in the emulator, so I installed https://github.com/adafruit/Adafruit-Retrogame and removed the gpio-key dtoverlays... but I this the generic methode should work too. I will need investige more.
