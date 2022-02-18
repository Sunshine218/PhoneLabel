Pod::Spec.new do |s|
  s.name = "PhoneLabel"
  s.version = "1.4.0"
  s.summary = "\u{81ea}\u{52a8}\u{8bc6}\u{522b}\u{7535}\u{8bdd}\u{53f7}\u{7801}\u{ff0c}\u{70b9}\u{51fb}\u{53f7}\u{7801}\u{53ef}\u{4ee5}\u{62e8}\u{6253}"
  s.license = "MIT"
  s.authors = {"罗雪梅"=>"Sunshine_luoxuemei@163.com"}
  s.homepage = "https://github.com/luoxuemei/PhoneLabel"
  s.description = "iOS\u{81ea}\u{52a8}\u{8bc6}\u{522b}\u{7535}\u{8bdd}\u{53f7}\u{7801}\u{ff0c}\u{70b9}\u{51fb}\u{53f7}\u{7801}\u{53ef}\u{4ee5}\u{62e8}\u{6253}, \u{4f7f}\u{7528} Objective-C."
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/PhoneLabel.framework'
end
