#
# Be sure to run `pod lib lint RecipeAirPrint.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RecipeAirPrint'
  s.version          = '1.0.2'
  s.summary          = 'Simple library to print recipes using AirPrint'

  s.description      = 'A simple library to print recipes using AirPrint'

  s.homepage         = 'https://github.com/janakmshah/RecipeAirPrint'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Janak Shah' => 'janak.shah@cuvva.com' }
  s.source           = { :git => 'https://github.com/janakmshah/RecipeAirPrint.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5'

  s.source_files = 'RecipeAirPrint/Classes/**/*'
  
end
