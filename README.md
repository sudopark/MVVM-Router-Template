# MVVM-Router-Template



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
   - **YourSceneName**Builders: Composed protocol of scene builders to create the next screens of the router(default is EmptyBuilder)
   - **YourSceneName**Router: owns **YourSceneName**Builders and conform **YourSceneName**Routing(should implement)
   - Router knows ViewController as Scenable

3. **YourSceneName**ViewController

   - **YourSceneName**Scene: Conforms Scenable and represents UIViewController)
   - **YourSceneName**ViewController: owns **YourSceneName**ViewModel

4. **YourSceneName**ViewModel

   - owns **YourSceneName**Router and send message

     

## Example

flow: MainTabScene -> DetailScene -> FinalScene

#### FinalScene

```swift
// Builder
public protocol FinalSceneBuilable: Buildable {
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
public final class FinalViewController: BaseViewController, FinalSceneMainTabScene {
    private let viewModel: MainTabViewModel
  	....
}

// ViewModel
public protocol FinalViewModel: class { }
public final class FinalViewModelImple: FinalViewModel {
    public let router: FinalRouting
    ...
}

```

#### DetailScene

```swift
// Builder
public protocol DetailSceneBuilable: Buildable {   
    func makeDetailScene() -> DetailScene
}
extension DIContainers: DetailSceneBuilable {
    public func makeDetailScene() -> DetailScene {...}
}

// Router
public protocol DetailRouting: Routing {   
    func routeToFinalScene()
}
public typealias DetailBuilders = FinalSceneBuilable
public final class DetailRouter: Router<DetailBuilders>, DetailRouting {
	  public func routeToFinalScene() {
        guard let final = self.nextSceneBuilders?.makeFinalScene() else { return }
        self.currentScene?.present(final, animated: true, completion: nil)
    }
}

// Scene + ViewController
public protocol DetailScene: Scenable { }
public final class DetailViewController: BaseViewController, DetailScene {
		private let viewModel: DetailViewModel
  	....
}

// ViewModel
public protocol DetailViewModel: class { }
public final class DetailViewModelImple: DetailViewModel {
		public let router: DetailRouting
    public init(router: DetailRouting) {
        self.router = router
	      // test
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.router.routeToFinalScene()
        }
    }
}

```

#### MainTabScene

```swift
// Builder
public protocol MainTabSceneBuilable: Buildable {   
    func makeMainTabScene() -> MainTabScene
}
extension DIContainers: MainTabSceneBuilable {
    func makeMainTabScene() -> MainTabScene {...}
}

// Router
public protocol MainTabRouting: Routing {
    func routeToDetailScene()
    func routeToFinalScene()
}
public typealias MainTabBuilders = DetailSceneBuilable & FinalSceneBuilable
public final class MainTabRouter: Router<MainTabBuilders>, MainTabRouting {
	  public func routeToDetailScene() {
        guard let detail = self.nextSceneBuilders?.makeDetailScene() else { return }
        self.currentScene?.present(detail, animated: true, completion: nil)
    }
    public func routeToFinalScene() {
        guard let final = self.nextSceneBuilders?.makeFinalScene() else { return }
        self.currentScene?.present(final, animated: true, completion: nil)
    }
}

// Scene + ViewController
public protocol MainTabScene: Scenable { }
public final class MainTabViewController: BaseViewController, MainTabScene {
		private let viewModel: MainTabViewModel
  	....
}

// ViewModel
public protocol MainTabViewModel: class { }
public final class MainTabViewModelImple: MainTabViewModel {
		public let router: MainTabRouting
    public init(router: MainTabRouting) {
        self.router = router
        
	      // test
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.router.routeToDetailScene()
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

