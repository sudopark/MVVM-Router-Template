# MVVM-Router-Template
Scene module generator focused on simplicity and efficiency 🤪


## install

```swift
sudo swift install.swift
```



## Generated files

1. **YourSceneName**Builder

   - **YourSceneName**Builder: makes **YourSceneName**Scene
   - extend DIContainers to conform **YourSceneName**Builder and implement **YourSceneName**Scene making as default

2. **YourSceneName**Router

   - **YourSceneName**Routing: routing interface
   - **YourSceneName**RouterBuildables: Composed protocol of scene builders to create the next screens of the router(default is EmptyBuilder)
   - **YourSceneName**Router: owns **YourSceneName**RouterBuildables and conform **YourSceneName**Routing(should implement)
   - Router knows ViewController as Scenable

3. **YourSceneName**ViewController

   - **YourSceneName**Scene: Conforms Scenable and represents UIViewController)
   - **YourSceneName**ViewController: owns **YourSceneName**ViewModel

4. **YourSceneName**ViewModel

   - owns **YourSceneName**Router and send message

     

## Example

- FirstScene -> Second or FianlScene
- SecondScene -> FinalScene
- FinalScene -> x

#### FinalScene

```swift
// Builder
public protocol FinalSceneBuilable {
    func makeFinalScene() -> FinalScene
}
extension DIContainers: FinalSceneBuilable {
    public func makeFinalScene() -> FinalScene {...}
}

// Router
public protocol FinalRouting: Routing { }
public typealias FinalBuilders = EmptyBuilder
public final class FinalRouter: Router<FinalBuilders>: FinalRouting { }

// Scene + ViewController
public protocol FinalScene: Scenable { }
public final class FinalViewController: BaseViewController, FinalSceneMainTabScene { ... }

// ViewModel
public protocol FinalViewModel: AnyObject {
public final class FinalViewModelImple: FinalViewModel { ... }

```

#### SecondScene

```swift
// Builder
public protocol SecondSceneBuilable {
    func makeSecondScene() -> SecondScene
}
extension DIContainers: SecondSceneBuilable {
    public func makeSecondScene() -> SecondScene { ... }
}

// Router
public protocol SecondRouting: Routing {
    func routeToFinalScene()
}
public typealias SecondRouterBuildables = FinalSceneBuilable
public final class SecondRouter: Router<SecondRouterBuildables>, SecondRouting {
    public func routeToFinalScene() {
        guard let finalScene = self.nextScenesBuilder?.makeFinalScene() else { return }
        self.currentScene?.present(finalScene, animated: true, completion: nil)
    }
}

// Scene + ViewController
public protocol SecondScene: Scenable { }
public final class SecondViewController: BaseViewController, SecondScene { ... }

// ViewModel
public protocol SecondViewModel: AnyObject { }
public final class SecondViewModelImple: SecondViewModel {
    private let router: DetailRouting
    public init(router: SecondRouting) {
        self.router = router
        
        // test
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.router.routeToFinalScene()
        }
    }
}

```

#### FirstScene

```swift
// Builder
public protocol FirstSceneBuilable {
    func makeFirstScene() -> FirstScene
}
extension DIContainers: FirstSceneBuilable {
    public func makeFirstScene() -> FirstScene {...}
}

// Router
public protocol FirstRouting: Routing {
    func routeToSecondScene()
    func routeToFinalScene()
}
public typealias FirstRouterBuildables = SecondSceneBuilable & FinalSceneBuilable
public final class FirstRouter: Router<FirstRouterBuildables>, FirstRouting {
    public func routeToSecondScene() {
        guard let secondScene = self.nextScenesBuilder?.makeSecondScene() else { return }
        self.currentScene?.present(secondScene, animated: true, completion: nil)
    }

    public func routeToFinalScene() {
        guard let finalScene = self.nextScenesBuilder?.makeSecondScene() else { return }
        self.currentScene?.present(finalScene, animated: true, completion: nil)
    }
}

// Scene + ViewController
public protocol FirstScene: Scenable { }
public final class FirstViewController: BaseViewController, FirstScene { ... }

// ViewModel
public protocol FirstViewModel: AnyObject { }
public final class FirstViewModelImple: FirstViewModel {
    private let router: FirstRouting
    public init(router: FirstRouting) {
        self.router = router
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.router.routeToSecondScene()
        }
    }
}
```

## Requirements

- [RxSwift](https://github.com/ReactiveX/RxSwift)
- [LeakDetector](https://github.com/uber/RIBs/blob/master/ios/RIBs/Classes/LeakDetector/LeakDetector.swift)
- [Require Componets](https://github.com/sudopark/MVVM-Router-Template/tree/master/Require%20Componets)
    

## References

- [RIBs](https://github.com/uber/RIBs)
- [VIPER-Module-Generator-master](https://github.com/Kaakati/VIPER-Module-Generator)
- [RxVIPTemplate](https://github.com/GeekTree0101/RxVIPTemplate)

