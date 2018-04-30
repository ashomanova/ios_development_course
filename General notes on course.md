
# Tasks for the course

1. Switf 4 (iOS11) course - Stanford University podcast - **1 lesson a week**
https://itunes.apple.com/ie/podcast/developing-ios-11-apps-with-swift/id1315130780?mt=2
2. Swift Programming Language book - **1/2 chapters a week**
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309

3. Swift Programming Syntax using udacity course -  **1 lesson a week**
https://eu.udacity.com/course/learn-swift-programming-syntax--ud902

4. Create repository in github to push latest tasks/projects 

5. Long-term goal: Write my own App using Swift (__4-5 month from now__)


## STANFORD course

### Lecture 1: Introduction to iOS 11, Xcode 9 and Swift 4
Task - build Concentration game

> Highlights: 
- when passing parameters in a method func() it should have `EXTERNAL_NAME INTERNAL_NAME: data type`, e.g. `withEmoji` is an external name in this case & `emoji` is an internal name
```func flipCard(withEmoji emoji: String, on button: UIButton)```
- syntax, no need in declaring a data type when creaing a variable, no need in using semicolons
- Command+rename will rename everywhere in the project 

> Issues:
- Be careful when connecting UI components with the code, e.g. even if code (reference) is removed after connecting component, it will still be present on the component Sent Event
    - Question: why removing code will not remove e.g. UI buttons Sent Event?
    - Use of external & internal names? to make code more readable?


### Lecture 2: Model View Controller (MVD)

> Highlights: 
- `Model` is essentially what an application is (e.g. Concentration App)
- `Controller` is about how is `Model` is presented in the UI (UI Logic)
- `View` is generic `Controller's` components, e.g. UIButtons, UILabel etc.

> Communications Pathways: 
- **Controller** can speak to the **Model** & **View**
- **Model** should ~~never speak~~ to **View** since Model is UI independant, where is View is essentially a UI
- View talks to the Controller 
- Model talks to the Controller (Notiificaiton & KVO - later stages of the course)

> Important points - Rules:
- `struct` has no inheritance, is a value type, not a reference type (makes a copy)
- `class` is a reference type (creates a reference to that class, changes made in the class would change it in the references as well)
- `init` method would not usually have external & internal names as parameter, `self.identifier` can be used here to avoid using different names
- `for loop` syntax is quite different from other languages
```
for identifier in 1...numberOfPairsOfCards{
        let card = Card(identifier: identifier)
        cards.append(card)
        cards.append(card)
    }
```
- `_` means variable has never been used
- `lazy` means it doesn't get initialised until someone tries to use it, has the following resrtiction - cannot have `didSet`
- `Dictionary` is equivalent to hashmaps
`Dictionary<Int, String>` is the same as `[Int: String]`
- Simpler syntax with one line of code can be used for optionals like this `return emoji[card.identifier] ?? "?"` instead of
```        
if emoji[card.identifier] != nil {
            //make sure it's not nil
          return emoji[card.identifier]!
        }else{
            return "?"
        }
```
- back to back `if` statements can be separated by a `,`


### Lecture 3: Swift Programming Language
 
> Highlights: 
- Fixing View to look properly in Landscape orientation by using `Embed in Stack` functionality in XCode
    - Embedded in Stack all the horizontal cards first & embedded all the combined horizontal cards into vertical stack
    - Pin the edges of the whole stack by using `Control + Drag` into Up, Left, Rigth & Bottom to spread cards equally
- Global function `stride` that lets you to move from one value to another using  2 types:
    - `stride(from:to:by)` excluding upper bound parameter
    ```
    for i in stride(from: 0, to: 10, by: 1) {
            print(i) // prints from 0 to 9
    }
    ```
    - `stride(from:through:by)` includes upper bound parameter
    ```
    for i in stride(from: 0, through: 10, by: 1) {
            print(i) // prints from 0 to 10
    }
    ```
    
    See this [link](https://medium.com/@abhimuralidharan/stride-in-swift-to-loop-over-a-range-b03658468c54) for more details
- `Tuple` is essentially a data structure, as a mini `struct`, value types (makes a copy)

    See this [link](https://medium.com/@abhimuralidharan/tuple-in-swift-a9ddeb314c79) for more details

> Issues:
