Pod::Spec.new do |s|
  s.name         = "ArtisanSDK"
  s.version      = '2.0.9'
  s.summary      = "Artisan is the first all-in-one platform for mobile app analytics, A/B testing, and personalization."
  s.homepage     = "http://www.useartisan.com"
  s.license      = { :type => 'Proprietary', :file => 'FILE_LICENSE' }
  s.author       = { "Kevin Jenkins" => "kevin.jenkins@useartisan.com" }
  s.source       = { :git => "https://github.com/ArtisanMobile/ArtisanSDK.git", :tag => '2.0.9' }
  s.platform     = :ios, '5.0'
  s.resources    = 'ArtisanSDK.bundle', 'ArtisanAnalytics.bundle'
  s.frameworks   = 'ArtisanSDK', 'CoreData', 'CFNetwork', 'Security', 'QuartzCore', 'SystemConfiguration', 'CoreLocation'
  s.library      = 'z'
  s.requires_arc = true
  s.preserve_path = '*.framework'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)"', 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/ArtisanSDK"', 'OTHER_LDFLAGS' => '-ObjC, -lz'}
end
