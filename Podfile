require_relative 'node_modules/react-native/scripts/react_native_pods'

platform :ios, '17.0'
prepare_react_native_project!

linkage = ENV['USE_FRAMEWORKS']
if linkage != nil
  Pod::UI.puts "Configuring Pods with #{linkage} linkage".green
  use_frameworks! :linkage => linkage.to_sym
end

target 'SeatclubTest' do
  config = use_native_modules!

  use_react_native!(
    :path => config[:reactNativePath],
    :hermes_enabled => false,  # Keep Hermes disabled for now
    :fabric_enabled => false,
    :app_path => "#{Pod::Config.instance.installation_root}/."
  )

  post_install do |installer|
    react_native_post_install(
      installer,
      config[:reactNativePath],
      :mac_catalyst_enabled => false
    )
    
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.0'  # Updated to match platform
      end
    end
  end
end