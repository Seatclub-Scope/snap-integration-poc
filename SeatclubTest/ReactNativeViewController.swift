import UIKit
import React

class ReactViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "TestApp",
            initialProperties: nil,
            launchOptions: nil
        )
        
        self.view = rootView
    }
}
