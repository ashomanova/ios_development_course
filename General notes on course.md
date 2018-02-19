
# Tasks for the course

1. Switf 4 (iOS11) course - Stanford University podcast - **1 lesson a week**
https://itunes.apple.com/ie/podcast/developing-ios-11-apps-with-swift/id1315130780?mt=2
2. Swift Programming Language book - **1/2 chapters a week**
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309

3. Create repository in github to push latest tasks/projects 

4. Long-term goal: Write my own App using Swift (__4-5 month from now__)


## STANFORD course

### Lecture 1: Introduction to iOS 11, Xcode 9 and Swift 4
Task - build Concentration game

> Highlights: 
- when passing parameters in a method func() it should have `EXTERNAL_NAME INTERNAL_NAME: data type`
- syntax, no need in declaring a data type when creaing a variable, no need in using semicolons
- Command+rename will rename everywhere in the project 

> Issues:
- Be careful when connecting UI components with the code, e.g. even if code (reference) is removed after connecting component, it will still be present on the component Sent Event
    - Question: why removing code will not remove e.g. UI buttons Sent Event?


### Lecture 2: Model View Controller (MVD)

>Notes:
- `Model` is essentially what an application is (e.g. Concentration App)
- `Controller` is about how is `Model` is presented in the UI
- `View` is `Controller's` components, e.g. UIButtons, UILabel etc.
