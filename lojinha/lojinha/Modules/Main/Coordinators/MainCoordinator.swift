import Foundation
import Common
import StoreFront

public class MainCoordinator: NSObject, Coordinator {
    
    var childCoordinators = [Coordinator]()
    var tabBarController: UITabBarController
    
    public init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    public func start() {
        print("Initing tab bar")
        loadModules()
    }
    
    internal func loadModules() {
        self.tabBarController.viewControllers = [
            StoreFront().viewController,
            StoreFront().viewController
        ]
        print("loading modules ...")
    }
    
}
