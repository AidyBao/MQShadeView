Pod::Spec.new do |s|
  s.name             = 'MQShadeView'
  s.version          = '1.0.5'
  s.summary          = 'MQShadeView For swift shadeView'

  s.description      = <<-DESC
  			MQShadeView.For swift shadeView.
                       DESC

  s.homepage         = 'https://github.com/AidyBao/MQShadeView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AidyBao' => '281907061@qq.com' }
  s.source           = { :git => 'https://github.com/AidyBao/MQShadeView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files          = 'MQShadeView/**/*.swift'
end