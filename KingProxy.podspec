Pod::Spec.new do |s|

s.name = "KingProxy"
s.summary = "a simple Swift Http & socks Proxy"
s.requires_arc = true
s.version = "1.0.0"
s.author = "Purkylin"

s.homepage = "https://github.com/purkylin"
s.source = { :git => "https://github.com/purkylin/KingProxy", :tag => "#{s.version}"}
s.ios.deployment_target  = '12.0'
s.osx.deployment_target  = '10.12'
s.source_files = 'src/**/*.{swift,h,c,m}'
s.resources = ["src/Surge.conf", "src/gfwlist.data"]
s.dependency 'CocoaLumberjack/Swift'
s.dependency 'CocoaAsyncSocket'
s.dependency 'MMDB-Swift'

end