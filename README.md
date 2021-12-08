# Swift-Resources

Generates a simply structure from your app resources dynamically each time you build the project:

### Output example:
```swift
import UIKit

enum R {

    enum Image {
        static var `avatar`: UIImage { UIImage(named: "avatar")! }
        static var `someImages_kickstarter2`: UIImage { UIImage(named: "some images/kickstarter-2")! }
        static var all: [UIImage] {[
            `avatar`,
            `someImages_kickstarter2`,
        ]}
    }

    enum Color {
        static var `accentColor`: UIColor { UIColor(named: "AccentColor")! }
        static var `eightSomething`: UIColor { UIColor(named: "8something")! }
        static var all: [UIColor] {[
            `accentColor`,
            `eightSomething`,
        ]}
    }

    static var all: [Any] {[
        R.Image.`avatar`,
        R.Image.`someImages_kickstarter2`,
        R.Color.`accentColor`,
        R.Color.`eightSomething`,
    ]}

    static func checkResources(shouldPrint: Bool = true) {
        R.all.forEach { resource in
            if shouldPrint {
                print("Asset available: \(resource)")
            } else {
                _ = resource
            }
        }
    }
}

```

## Instructions

**Please follow all the following steps to know how it works and have all the necessary files set up.**

## 1/3 What's needed:
1. You need python 3 installed and you should have an alias/symbolic link to the binary with the name "python3".
2. You will also need the `gyb.py` program made by Apple developers. 
	- Official file link: https://github.com/apple/swift/blob/main/utils/gyb.py
	- Some unofficial documentation and tutorials: https://nshipster.com/swift-gyb/

## 2/3 Tutorial using the example project

1. Put `gyb.py` in the root folder of the project, the structure should be:
```
├── README.md
├── __init__.py         # necessay file to easily use gyb_resources.py
├── gyb.py              # apple's gyb
├── gyb_resources.py    # python script to generate code
├── gyb_script.py       # script for Xcode
├── resourcesTest       # project folder name
```

2. Build and run the project. 

**Notes:**
The file that will generate the structure for your assets is `R.swift.gyb`, you can customize it if you like.
The `R.swift` file should not be manually modified since it is automatically generated by `R.swift.gyb`.

3. You can use the `R` structure in your code like this:
```swift
imageView1.image = R.Image.avatar
```
```swift
view1.backgroundColor = R.Color.accentColor
```


## 3/3 Tutorial for your project

1. You need to copy these files to the root folder of your project:
```
├── __init__.py
├── gyb.py
├── gyb_resources.py
├── gyb_script.py
```

2. Change the variable `project_name` inside `gyb_script.py` to your project folder name.
3. Copy `R.swift.gyb` where you want `R.swift` to be generated. `R.swift.gyb` should **NOT** be added to your current target, so it should **not** be compiled (`Compile sources`) **nor** copied to the app bundle resources (`Copy bundle resources`).
4. You must create a new `Run Script Phase` in the `Build Phases` tab and these are its settings:
Shell: `/bin/sh`
Script content: 
```shell
python3 $PROJECT_DIR/gyb_script.py
```
Run script: uncheck "for install builds only" and "based on dependendy analysis"

5. **IMPORTANT** drag up this script build phase so that it appears BEFORE `Compile Sources`. Example:
```
- Dependencies
- GYB # your script created in step 4, you can rename it
- Compile Sources
- ...
```

6. You should be able to compile your project. After this a new file named `R.swift` should be generated alongside `R.swift.gyb`, drag `R.swift` to the project adding it to the proper target/s. `R.swift` should be treated as any other swift file (it should be compiled) BUT you should not modify it manually, since that file will change depending on your assets.

## Limitations / notes
- Try not to use weird asset names (this is handled properly but just in case).
- Nested folders work BUT only if all nested folders use the same setting for "provides namespace".
- The script respects the "provides namespace" option and works fine when you mark a folder with that option.
- If your `Assets.xcassets` is named differently, just modify `R.swift.gyb` adding the folder name in the function calls `image_resources("myAssets.xcassets")` and `color_resources("myAssets.xcassets")`
