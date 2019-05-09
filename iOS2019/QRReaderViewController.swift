//
//  QRReaderViewController.swift
//  iOS2019
//
//  Created by Robert JF on 5/8/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit
import AVFoundation
import QRCodeReader

class QRReaderViewController: UIViewController, QRCodeReaderViewControllerDelegate {
    
    lazy var readerVC: QRCodeReaderViewController = {
        let builder = QRCodeReaderViewControllerBuilder {
            $0.reader = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
            $0.showTorchButton        = true
            $0.showSwitchCameraButton = true
            $0.showCancelButton       = true
            $0.showOverlayView        = true
            $0.rectOfInterest         = CGRect(x: 0.2, y: 0.2, width: 0.6, height: 0.6)
        }
        return QRCodeReaderViewController(builder: builder)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "QR Reader"
    }
    
    @IBAction func btnOpenCamera(_ sender: Any) {
        readerVC.delegate = self
        
        readerVC.completionBlock = {(result: QRCodeReaderResult?) in
            print(result)
        }
        // Presents the readerVC as modal form sheet
        readerVC.modalPresentationStyle = .formSheet
        
        present(readerVC, animated: true, completion: nil)
    }
    
    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
        showAlert(message: result.value)
    }
    
    func readerDidCancel(_ reader: QRCodeReaderViewController) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Mensaje", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}


