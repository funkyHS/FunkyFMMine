

Pod::Spec.new do |s|
  s.name             = 'FunkyFMMine'
  s.version          = '0.1.0'
  s.summary          = 'FunkyFMMine'

  s.description      = <<-DESC
FunkyFMMine 是FM我的模块
                       DESC

  s.homepage         = 'https://github.com/funkyHS/FunkyFMMine'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'funkyHS' => 'hs1024942667@163.com' }
  s.source           = { :git => 'https://github.com/funkyHS/FunkyFMMine.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FunkyFMMine/Classes/**/*'
  
   s.resource_bundles = {
     'FunkyFMMine' => ['FunkyFMMine/Assets/*.png']
   }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

s.dependency 'FunkyFMBase/Base'
s.dependency 'FunkyFMBase/Category'


end
