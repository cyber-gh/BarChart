Pod::Spec.new do |s|
  s.name         = "BarChartSwiftUI"
  s.version      = "1.4.6"
  s.summary      = "Bar Charts Swift library"
  s.homepage     = "https://github.com/cyber-gh/BarChart"
  s.source       = { :git => "https://github.com/cyber-gh/BarChart.git", :tag => s.version }
  s.license      = 'Apache'
  s.author       = { "cyber-gh" => "soltangh.work@gmail.com" }
  s.source_files  = "Sources/**/*.swift"
  s.ios.deployment_target  = '13.0'
  s.osx.deployment_target  = '10.15'
  s.swift_version = '5.0'
end
