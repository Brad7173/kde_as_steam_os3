# kde_as_steam_os3
Running kde or Kubuntu 22.04 LTS as a Steam OS:

My idea behind this is to have a dedicated OS for Steam but 
retain the ability to use all of Kubuntu's installed apps etc.

====================================================================


One of the first things I noticed when starting steam at startup in big picture mode is the 
transition between the desktop for kde loading and steam going into big picture mode. It looks awful!!

This can be resolved by not using any wallpaper. Change to nothing but a black color.

Right click desktop ...Configuire Desktop and Wallpaper...Window Type:Plain Color Black

This increases the speed that steam loads.

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
