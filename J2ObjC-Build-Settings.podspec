Pod::Spec.new do |s|
  s.name         = "J2ObjC-Build-Settings"
  s.version      = "1.0"
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.summary      = "Podspec for using Google's J2ObjC Objective-C Translator and Runtime in a Cocoapods project."
  s.description  = <<-DESC
                    Configures an XCode project Build Settings to use Google's J2ObjC Objective-C Translator
                    and Runtime. J2ObjC must be downloaded and installed separately and moved to `/usr/local/bin/j2objc`
                    A build rule must also be created separately in order to complete the configuration. See this
                    page for details: https://developers.google.com/j2objc/guides/xcode-build-rules
                   DESC
  s.homepage     = "https://github.com/pliablematter/J2ObjC-Build-Settings"
  s.author       = "Pliable Matter LLC"
  s.source       = { :git => "https://github.com/pliablematter/J2ObjC-Build-Settings.git", :tag => "v#{s.version}" }

  s.requires_arc = false
  
  s.subspec 'j2objc' do |j2objc|
    j2objc.xcconfig = { \
      'OTHER_LDFLAGS' => '-ljre_emul', \
      'LIBRARY_SEARCH_PATHS' => '"/usr/local/bin/j2objc/lib"', \
      'HEADER_SEARCH_PATHS' => '"/usr/local/bin/j2objc/include"', \
      'FRAMEWORK_SEARCH_PATHS' => '"/usr/local/bin/j2objc/frameworks"' }
  end
end
