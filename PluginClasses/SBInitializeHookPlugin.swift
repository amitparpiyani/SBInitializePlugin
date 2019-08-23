//
//  ZappGeneralIPHookPlugin.swift
//  Zapp-App
//
//  Created by user on 17/12/2018.
//  Copyright © 2018 Applicaster LTD. All rights reserved.
//

import Foundation
import ZappPlugins
import SugarBoxSDK


@objc public class SBInitializeHookPlugin : NSObject, ZPAppLoadingHookProtocol {
    
    
    
    //MARK: - Consts variables
    public let entryPointKey = "entry_point"
    public let errorMessageKey = "unauthorized_message"
    public let authorizeIpArrayKey = "authorize_ip_array"
    
    public let errorMessageTextStyleKey = "text_style"
    public let errorMessageDialogBgColorKey = "dialog_bg_color"
    

    static var context:SugarBoxContext? = nil

    
    
    //MARK: - public variables
    public var configurationJSON: NSDictionary?
    
    //MARK: - Private variables
    private var ipResult: String? = nil
    
    //MARK: - Mandatory methods
    public required override init() {
        super.init()
    }
    
    public required convenience init(configurationJSON: NSDictionary?) {
        self.init()
        self.configurationJSON = configurationJSON
    }
    
    //MARK: - ZPAppLoadingHookProtocol implementation
    @objc public func executeOnLaunch(completion: (() -> Void)?){
        
        print("inside sugarbox plugin on launch")
        var sdkKey:String?
        var partnerId:String?
        var appVersion:String?
        if let config = configurationJSON
        {
            sdkKey = config.value(forKey: "sdk_key") as? String
            partnerId = config.value(forKey: "partner_id") as? String
            appVersion = config.value(forKey: "app_version") as? String
        }
       // var sdkKey = configuratio
//        SBInitializeHookPlugin.context = SugarBoxContext.shared(Credentials.shared(sdkKey ?? "fe40b221-4ac0-458a-bd56-33ffbe3c4b83", partnerId ?? "3", appVersion ?? "1", nil),self)
        completion?()
    }
    
    //MARK: - Private Methods implementation

}
