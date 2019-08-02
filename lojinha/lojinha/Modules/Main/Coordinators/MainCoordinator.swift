import Foundation
import Common
import StoreFront
import Login

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
        
        let modules: [Module] = [
            StoreFrontModule(),
            LoginModule()
        ]
        
        self.tabBarController.viewControllers = modules.map({ return $0.viewController })
        print("loading modules ...")
    }
    
}
