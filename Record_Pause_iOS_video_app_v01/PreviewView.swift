//
//  PreviewAreaView.swift
//  Record_Pause_iOS_video_app_v01
//
//  Created by Steve on 11/5/18.
//  Copyright © 2018 SteveAndTheDogs. All rights reserved.
//
// Code was created by S.Black
// From the AVCam Swift demo code provided by Apple

import Foundation
import UIKit
import AVFoundation
import os.log


class PreviewView: UIView {
    
    
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        os_log("PreviewAreaView. videoPreviewLayer", log: OSLog.default, type: .info)
        guard let layer = layer as? AVCaptureVideoPreviewLayer else {
            fatalError("Expected `AVCaptureVideoPreviewLayer` type for layer. Check PreviewView.layerClass implementation.")
        }
        return layer
    }
    
    
    
    var session: AVCaptureSession? {
        get {
            os_log("PreviewAreaView. AVCaptureSession? - get", log: OSLog.default, type: .info)
            return videoPreviewLayer.session
        }
        set {
            os_log("PreviewAreaView. AVCaptureSession? - set", log: OSLog.default, type: .info)
            videoPreviewLayer.session = newValue
        }
    }
    
    
    
    // MARK: UIView
    
    override class var layerClass: AnyClass {
        os_log("PreviewAreaView. layerClass", log: OSLog.default, type: .info)
        return AVCaptureVideoPreviewLayer.self
    }
    
    
    
    // --------------------
} // END class PreviewAreaView:
