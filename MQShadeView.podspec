Pod::Spec.new do |s|
s.name             = "MQShadeView"
s.version          = "1.0.1"
s.summary          = "Custom shadeview used on swift."
s.description      = <<-DESC
                     Custom shadeView used on swift, which implement by swift.
                     DESC
s.homepage         = "https://github.com/AidyBao/MQShadeView"
s.license          = 'MIT'
s.author           = { "AidyBao" => "281907061@qq.com" }
s.source           = { :git => "https://github.com/AidyBao/MQShadeView.git", :tag => s.version }

s.ios.deployment_target = '10.0'

s.source_files     = 'MQShadeView/**/*.swift'
s.requires_arc     = true
end