## Settings Accent Icons
Have accent colored icons in Settings app in Android Pie 9 or above (Android 10 Q)

![Settings Accent Icons](https://repository-images.githubusercontent.com/272248446/1ccef080-af2b-11ea-97db-d0bb8f0d9d51)

#### Why though?

In android 9 update it felt like stock android is losing its charm, its originality. iOS like recents, samsung like icons in settings, weird partition and mounting system making it harder to root.  
I immediately disliked icon color change which killed my minimalistic elegant android experience.  
This is just me trying to held onto.

#### Features
* In Android 9 uses `@android:color/accent_device_default_light` so depending on your framework-res you'll get that color. If your want other color then edit apk using [apktool](https://forum.xda-developers.com/showthread.php?t=1755243) and change values in `colors.xml` in `values` folder. Then place it in the zip 
* Uses accent color based on dark/light mode in Android 10 or above (`@android:color/accent_device_default`)  
TIP: use [Accent Colour Creator](https://github.com/Akilesh-T/ACC/releases) to change accent colors.

#### Requirements
1. Android 9 or up
1. Magisk 20.0+

#### Tested
- [x] Android 9 Pie (working as intended)
- [x] Android 10 Q
- [ ] Android 11 R

#### Credits
@topjohnwu for magisk

#### Changelog
###### v1.2
* Fix customize script
###### v1.1
* Fix for pie
###### v1.0
* Initial Release
