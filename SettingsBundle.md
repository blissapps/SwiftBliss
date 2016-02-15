# Settings Bundle

# Add Acknowledgements to your App settings
## How To Do It

### Alternative 1:

[EasyAbout](https://github.com/JARMourato/EasyAbout) 

### Alternative 2:

-Add [Settings.bundle](https://github.com/blissapps/SwiftBliss/blob/master/SettingsBundle/Settings.bundle) to your project (don't forget to add it to your targets)

-In your Podfile add (watch out for the paths!!!)
```ruby
post_install do | installer |
    require 'fileutils'
    FileUtils.cp_r('Pods/Target Support Files/Pods/Pods-acknowledgements.plist', 'Resources/Settings.bundle/Acknowledgements.plist', :remove_destination => true)
end
```

The exemple for Embly was something like this (note the Embly in the path):
```ruby
post_install do | installer |
    require 'fileutils'
    FileUtils.cp_r('Pods/Target Support Files/Pods-Embly/Pods-Embly-acknowledgements.plist', 'Embly/Resources/Settings.bundle/Acknowledgements.plist', :remove_destination => true)
end
```
### Notes
More info [here](https://github.com/CocoaPods/CocoaPods/wiki/Acknowledgements)

# Add version to your App settings
## How To Do It
-Add [Settings.bundle](https://github.com/blissapps/SwiftBliss/blob/master/SettingsBundle/Settings.bundle) to your project (The same from above)

-Add [settings-script.sh](https://github.com/blissapps/SwiftBliss/blob/master/SettingsBundle/settings-script.sh) to your project (but DON'T include it in your targets because that would be just stupid)

-Add a new Run Script to your Project Target > Build Phases (if you put the script elsewhere mind the path)
```ruby
"${SRCROOT}/settings-script.sh" 
```
Build and you should be done.

###Notes
In iOS 9 or something, after you run the App you need do kill the "Settings" App on your device/simulator for the new settings to appear... Apple isn't what it used to be.
