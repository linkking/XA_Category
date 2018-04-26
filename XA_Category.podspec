

Pod::Spec.new do |s|

  s.name         = "XA_Category"
  s.version      = "1.0.1"
  s.summary      = "XA_Category."

  s.description  = <<-DESC
                    this is XA_Category
                   DESC

  s.homepage     = "https://github.com/linkking/XA_Category"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "linkking" => "xxxx@msn.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/linkking/XA_Category.git", :tag => s.version.to_s }
  s.source_files  = "XA_Category/XA_Category/**/*.{h,m}"
  

  s.requires_arc = true
  s.dependency "CTMediator"

end
