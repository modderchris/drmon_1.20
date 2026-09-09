fork for 1.20 by modderchris, credit acidjazz for the bulk of the code and any credited on the parent of this fork
fixes changed internal status names, a bug related to bool->string outputs, slight changes in world setup, and a fix for a glitch on slower screen updates that cause flashing during updates

![](examples/2.jpg)
> *status*: currently stable


# drmon
monitor and failsafe automation for your draconic reactor

### what is this
this is a computercraft LUA script that monitors everything about a draconic reactor, with a couple features to help keep it from exploding
NB: This is for Minecraft 1.20, no future versions tested, internal status names may change again, unsure if it works on anything older, forked for that same reason


### tutorial
no video tutorial for this version

### features
* uses a 3x5 wide advanced computer touchscreen monitor to interact with your reactor
* automated regulation of the input gate for the targeted field strength of 50%
  * adjustable
* immediate shutdown and charge upon your field strength going below 15%
  * adjustable
  * reactor will activate upon a successful charge
* immediate shutdown when your temperature goes above 8000C
  * adjustable
  * reactor will activate upon temperature cooling down to 3000C
    * adjustable

* easily tweak your output flux gate via touchscreen buttons
  * +/-100k, 10k, and 1k increments

### requirements
* one fully setup draconic reactor with fuel
* 1 advanced computer
* 15 advanced monitors
* 4 wired modems, wireless will not work
* a bunch of network cable

### installation
* your reactor output flux gate must be setup so that one side of it and one of your stabilizers touches a side of the advanced computer
  * by default, flux gate should touch the back side
  * if you want to use different sides you need to modify `startup` after you have installed this and specify the sides
* connect a modem to one of the stabilizers
* connect a modem to your input flux gate (the one connected to your reactor energy injector)
* connect a modem to your advanced computer
* setup your monitors to be a 3x5 and connect a modem to anywhere but the front
* run network cable to all 4 modems
* install this code via running the install script using these commands :

```
> pastebin get DVuqyVdF install
> install

```
* modify `startup` if you wish to configure/alter any variables mentioned in the feature list, you'll find them at the top of the file
```
> startup
```
* you should see stats in your term, and on your monitor(terminal blnks, was not sure how to fix that and less critical as it is intended to be 100% monitor)


### upgrading to the latest version
* right click your computer
* hold ctrl+t until you get a `>`

```
> install
> startup
```
### known issues
* none known yet for 1.20
