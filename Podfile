# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TodoList' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'SwiftLint', '~> 0.27'
  pod 'Then', '~> 2.4.0'
  pod 'SwiftGen'
  # Pods for TodoList
  def testing_pods
    pod 'Quick', '~> 1.3'
    pod 'Nimble', '~> 7.3'
  end
  target 'TodoListTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

  target 'TodoListUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
