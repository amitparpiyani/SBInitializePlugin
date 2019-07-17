Pod::Spec.new do |s|
  s.name             = "SBInitializePlugin"
  s.version           = '0.0.1'
  s.summary          = "Sugarbox Initialize Plugin"
  s.description      = <<-DESC
                        InitializePlugin is a plugin that on launch integrate sugarbox.
                       DESC
  s.homepage         = "http://sbgit01.sboxdc.com/amit.parpiyani/sbinitializeplugin"
  s.license          = ''
  s.author           = { "cmps" => "amit.parpiyani@sugarboxnetworks.com" }
  s.source           = { :git => "git@sbgit01.sboxdc.com:amit.parpiyani/sbinitializeplugin.git"}

  s.platform                = :ios, '10.0'
  s.ios.deployment_target   = "10.0"
  s.requires_arc            = true
  s.static_framework        = true
  s.swift_version           = '4.2'

  s.source_files  = 'PluginClasses/**/*.{swift}'
  s.resources     = 'PluginClasses/**/*.xib'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2'
              }

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'Alamofire'
  s.dependency 'SugarBoxSDK'

end
