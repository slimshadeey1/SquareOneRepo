Pod::Spec.new do |s|
  s.name         = 'GTMOAuth2'
  s.version      = '1.1.0'
  s.author       = 'Google Inc.'
  s.homepage     = 'https://github.com/google/gtm-oauth2'
  s.license      = { :type => 'Apache', :file => 'LICENSE' }
  s.source       = { :git => 'https://github.com/google/gtm-oauth2.git' } # ,
  #                   :tag => "v#{s.version}" }
  s.summary      = 'Google Toolbox for Mac - OAuth 2 Controllers'
  s.description  = <<-DESC
      The Google Toolbox for Mac OAuth 2 Controllers make it easy for Cocoa
      applications to sign in to services using OAuth 2 for authentication
      and authorization.
      
      This version can be used with iOS ≥ 6.0 or OS X ≥ 10.8.
                   DESC

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = false

  s.source_files = 'Source/*.{h,m}'
  s.ios.source_files = 'Source/Touch/*.{h,m}'
  s.ios.resources = 'Source/Touch/*.xib'
  s.osx.source_files = 'Source/Mac/*.{h,m}'
  s.osx.resources = 'Source/Mac/*.xib'

  s.frameworks = 'Security', 'SystemConfiguration'
  s.dependency 'GTMSessionFetcher', '~> 1.1.0'
end
