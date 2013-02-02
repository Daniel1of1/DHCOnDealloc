Pod::Spec.new do |s|
  s.name         = "DHCOnDealloc"
  s.version      = "0.1.0"
  s.summary      = "A simple category that allows you set a block to fire when an object is dealloced."
  s.homepage     = "https://github.com/confidenceJuice/DHCOnDealloc"
  s.license      = 'MIT'
  s.author       = { "Daniel Haight" => "confidence.designed@gmail.com" }
  s.source       = { :git => "https://github.com/confidenceJuice/DHCOnDealloc.git", :tag => s.version }
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.5'
  s.source_files = 'DHCOnDealloc/*.{h,m}'
  s.requires_arc = true
end
