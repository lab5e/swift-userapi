Pod::Spec.new do |s|
  s.name = 'User'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.3.7'
  s.source = https://github.com/lab5e/swift-userapi
  s.authors = 'releases@lab5e.com'
  s.license = BSD
  s.homepage = 'https://lab5e.com/'
  s.summary = 'User API Client'
  s.description = 'Lab5e User API Client'
  s.documentation_url = 'https://docs.labe5e.com/'
  s.source_files = 'User/Classes/**/*.swift'
end
