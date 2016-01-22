## 💍 Singleton
------------

The singleton pattern ensures that only one object of a particular class is ever created.
Do not overuse this pattern!

### Example:

```swift

class Bliss {
  static let sharedManager = Bliss()
  private init() {}  
  // A private init prevents creation of instances, thus ensuring that just one instance is created.
}

```

### Usage:

```swift

let manager = Bliss.sharedManager

```

# TO DO:
- [ ] Explain why singletons should be avoided
