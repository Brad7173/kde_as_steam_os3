# kde_as_steam_os3
Running kde or Kubuntu 22.04 LTS as a Steam OS:

https://store.steampowered.com/steamos ~ this is nothing more than a recovery image!!

I asked my uncle about his steam deck and guided him into the settings from his desktop
I quickly discovered it was running KDE Plasma.

My idea behind this is to have a dedicated OS for Steam but 
retain the ability to use all of Kubuntu's installed apps etc.

====================================================================


One of the first things I noticed when starting steam at startup in big picture mode is the 
transition between the desktop for kde loading and steam going into big picture mode. It looks awful!!

This can be resolved by not using any wallpaper. Change to nothing but a black color.

Right click desktop ...Configuire Desktop and Wallpaper...Window Type:Plain Color Black

This increases the speed that steam loads.

No desktop wallpaper on load, not widgets, no panels!! *Note the DE in KDE stands for Desktop Environment.

Kubuntu watched the fire and when they saw a nice log they liked they stuck a fork in it. 
~hint Kubuntu is a fork of Ubuntu...really just Ubuntu rebranded.

The next thing I discovered was removing any default or other panels from the dekstop as well as any widgets.

I'm using the saturn boot animation for steam's big picture mode and this works and blends in flawlessly.
It more than doubled the speed steam loads!! (Using a boot loader like refind did slow this down!)


https://github.com/thor27/steam-login/ ~ this did not work for me and I wanted a working solution. I prefer to retain both a dedicated
gaming os and yet a full blown operating system.

https://github.com/boppreh/steamgrid

======================================================

https://github.com/SteamGridDB/SGDBoop

https://www.steamgriddb.com/boop

======================================================

https://github.com/Brad7173/Steam_App_Manifest_Catalog

*If I build an image from disk...it will contain this!!

https://github.com/Brad7173/Steam_App_Manifest_Catalog/blob/main/screenshots/Screenshot_1.png

https://github.com/Brad7173/Steam_App_Manifest_Catalog/blob/main/screenshots/Screenshot_3.png

============Steam Grid Icons==============================================

Upon further inspection, I discovered that when you add a custom logo to

a non steam game it will show up in this folder:

/home/yourusername/.steam/steam/userdata/1039566115/config/grid/

your grid icon wil have the same number as your custom logo.

If you create an image and save it with that number followed by a lower case "p"

it will show up in grid view.

Hero icons or recently played have a "_hero.png" after the same number.

The simplest solution for customization is to boop them or bookmark that

folder in dolphin file browser.

I could write an app to handle this and the end user just adds their image but this would be vain.

The _hero icons you will have to boop them.

*If I create a stripped down (img) image from my hard drive it will contain sgdboop.

This project as for availability to the public is at a halt. There was a 'high tech' or other effort to sabotague this project
in favor of microplop and windorks products.
