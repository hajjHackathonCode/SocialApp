//
//  ViewController.swift
//  SocialApp
//
//  Created by Dalal on 8/2/18.
//  Copyright © 2018 Dalal. All rights reserved.
//

import UIKit
import AVFoundation
import BarcodeScanner

class ViewController: UIViewController{
    var scanDone = false
    override func viewDidLoad() {
        self.navigationController?.navigationBar.backItem?.title = ""
        
    }
    
    private func makeBarcodeScannerViewController() -> BarcodeScannerViewController {
        let viewController = BarcodeScannerViewController()
        viewController.codeDelegate = self
        viewController.errorDelegate = self
        viewController.dismissalDelegate = self
        return viewController
    }
    
    
    @IBAction func addNewRealtive(_ sender: Any) {
        let viewController = makeBarcodeScannerViewController()
        viewController.title = "قم بمسح الكود"
        present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if scanDone == true {
            self.performSegue(withIdentifier: "relative", sender: nil)
        }
        
        
        
    }
    
}

// MARK: - BarcodeScannerCodeDelegate

extension ViewController: BarcodeScannerCodeDelegate {
    func scanner(_ controller: BarcodeScannerViewController, didCaptureCode code: String, type: String) {
        print("Barcode Data: \(code)")
        print("Symbology Type: \(type)")
        self.scanDone = true
        
       controller.dismiss(animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            controller.resetWithError()
        }
    }
}

// MARK: - BarcodeScannerErrorDelegate

extension ViewController: BarcodeScannerErrorDelegate {
    func scanner(_ controller: BarcodeScannerViewController, didReceiveError error: Error) {
        print(error)
    }
}

// MARK: - BarcodeScannerDismissalDelegate

extension ViewController: BarcodeScannerDismissalDelegate {
    func scannerDidDismiss(_ controller: BarcodeScannerViewController) {
        controller.dismiss(animated: true, completion: nil)
        
    }
}


struct MissingPilgrimage{
    var name:String?
    var period:String?
    var image:UIImage?
}


struct  PMessage{
    var message:String?
    var name:String?
    var image:UIImage?
    var read:Bool?
}

struct  MessageUpdate{
    var name:String?
    var date:String?
    var image:UIImage?
    var message:String?
    var time:String?
    
}


