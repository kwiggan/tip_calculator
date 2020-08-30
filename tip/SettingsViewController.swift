//
//  SettingsViewController.swift
//  tip
//
//  Created by Keneisha Wiggan on 8/30/20.
//  Copyright © 2020 codePath. All rights reserved.
//

import UIKit
import Lottie
class SettingsViewController: UIViewController {
    @IBOutlet weak var tipCalculatorTwo: UISegmentedControl!
    
    let animationView = AnimationView ()

    override func viewDidLoad() {
        super.viewDidLoad()
    setupAnimation()
        // Do any additional setup after loading the view.
    }
    //Create lottie animation
    private func  setupAnimation (){
        animationView.animation = Animation.named("money")
        animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200 )
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          print("view will appear")
          // This is a good place to retrieve the default tip percentage from UserDefaults
          // and use it to update the tip amount
      }

      override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          print("view did appear")
      }

      override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)
          print("view will disappear")
      }

      override func viewDidDisappear(_ animated: Bool) {
          super.viewDidAppear(animated)
          print("view did disappear")
      }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
