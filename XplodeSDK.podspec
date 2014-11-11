
Pod::Spec.new do |spec|

  spec.name         = "XplodeSDK"
  spec.version      = "2.6.2"
  spec.summary      = "Xplode is the world's first 100% native platform for mobile app developers to promote their apps, grow users, and boost revenue."
  
  spec.homepage 	= "http://xplode.iddiction.com"
  spec.license 		= { :type => "Commercial", :file => "LICENSE" }
  spec.author 		= { "Iddiction, Inc." => "info@iddiction.com" }
  spec.platform 	= :ios, "6.0"
  spec.source 		= { :git => "https://github.com/Iddiction/XplodeSDK.git", :tag => spec.version.to_s }
  
  spec.vendored_frameworks 	= 'XplodeSDK.framework'
  spec.preserve_paths 		= "XplodeSDK.framework"
  spec.frameworks 			= 'Accelerate', 'CoreGraphics', 'AdSupport', 'Security', 'StoreKit', 'QuartzCore', 'CoreTelephony', 'MediaPlayer'
  spec.requires_arc 		= true
  spec.xcconfig 			= {
  "OTHER_LDFLAGS" => "-ObjC -lsqlite3",
  "ALWAYS_SEARCH_USER_PATHS" => "YES",
  "CLANG_ENABLE_MODULES" => "YES"
  }

end
