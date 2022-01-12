# MVVM-Router-Template
Scene module generator focused on simplicity and efficiency 🤪


## install

```swift
sudo swift install.swift
```



## Generated files
![스크린샷 2021-12-16 오후 11 55 26](https://user-images.githubusercontent.com/56535651/146394809-86c5382a-b1f3-4e4e-9f4b-4ed4db634366.png)


1. **YourSceneName**Scene: conforms Scenable and represents UIViewController

1. **YourSceneName**Builder

   - **YourSceneName**Builder: makes **YourSceneName**Scene
   - extend DependencyInjector to conform **YourSceneName**Builder and implement **YourSceneName**Scene making as default

2. **YourSceneName**Router

   - **YourSceneName**Routing: routing interface
   - **YourSceneName**RouterBuildables: Composed protocol of scene builders to create the next screens of the router(default is EmptyBuilder)
   - **YourSceneName**Router: owns **YourSceneName**RouterBuildables and conform **YourSceneName**Routing(should implement)
   - Router knows ViewController as Scenable

3. **YourSceneName**ViewController

   - **YourSceneName**ViewController: conforms **YourSceneName**Scene
   - **YourSceneName**ViewController: owns **YourSceneName**ViewModel
   - provide **YourSceneName**Scene Interactor

4. **YourSceneName**ViewModel
   - owns **YourSceneName**Router and send message
   - conform **YourSceneName**SceneInteractable
   - (optional) conform next scene's Listenable protocol

     

## Example

- [Readmind app source code](https://github.com/sudopark/Clean-Mooyaho)
- [Example Project](https://github.com/sudopark/MVVM-Router-Template/tree/master/Example/TemplateExample)
- ApplicationRouter -> Make and route to MainScene
- MainScene
    -  Route to RandomNumberScene
    -  Route to EmptyFinalScene
- RandomNumberScene
    -  make random number and present
    -  Send new rand number generated message to MainScene via RandomNumberSceneListenable
- FinalScene -> do nothing


## Requirements

- [RxSwift](https://github.com/ReactiveX/RxSwift)
- [LeakDetector](https://github.com/uber/RIBs/blob/master/ios/RIBs/Classes/LeakDetector/LeakDetector.swift)
- [Require Componets](https://github.com/sudopark/MVVM-Router-Template/tree/master/Require%20Componets)
    

## References

- [RIBs](https://github.com/uber/RIBs)
- [VIPER-Module-Generator-master](https://github.com/Kaakati/VIPER-Module-Generator)
- [RxVIPTemplate](https://github.com/GeekTree0101/RxVIPTemplate)

