## 💍 Model/View/View Model
------------

Description

### Example:

```swift

class AppBliss {
  static let sharedManager = AppBliss()
  private init() {}  
  // A private init prevents creation of instances, thus ensuring that just one instance is created.
}

```

### Usage:

```swift

let manager = AppBliss.sharedManager

```

### Tips: 

You should be able to prefix your singleton class name with "App" and it would still make sense. ie: AppDataAccess, AppMusicPlayer, etc


# TO DO:
- [ ] Explain why singletons should be avoided
