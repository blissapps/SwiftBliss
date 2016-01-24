
## :watermelon: Protocol
------------

A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. 
The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.
Any type that satisfies the requirements of a protocol is said to conform to that protocol.

### Example:

```swift

protocol BlissProtocol {
    func changeMusicTo(music: Music, byUser: User)
}

```

Custom types adopt a protocol by placing the protocol's name after the type's name:

```swift

struct BlissStruct: BlissProtocol {
    func changeMusicTo(music: Music, byUser: User) {
            if user.name == .Meira { changeToMusic(Music.random()) }
    }
}

```

### Further Info: 

[The Swift Programming Language (Protocols)](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html)


# TO DO:
- [ ] Explain protocol extensions
