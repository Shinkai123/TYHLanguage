#
#  Be sure to run `pod spec lint TYHLanguageManagerMoudle.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "TYHLanguage"
  spec.version      = "0.0.6"
  spec.summary      = "A TYHLanguageManagerMoudle."


  spec.description  = 'a project of HomeMoudle'

  spec.homepage     = "https://github.com/Shinkai123/TYHLanguage"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }



  spec.author             = { "tyh" => "1210480377@qq.com" }
  spec.swift_version = '4.2'
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Shinkai123/TYHLanguage.git", :tag => spec.version.to_s }

  spec.source_files  = "TYHLanguage/Classes/**/*{.swift}"

  spec.dependency 'CTMediator'

end
