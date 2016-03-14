Browser.modern_rules.clear
Browser.modern_rules.tap do |rules|
	rules << -> b { b.webkit? }
	rules << -> b { b.firefox? && b.version.to_i >= 17 }
	rules << -> b { b.ie? && b.version.to_i >= 10 }
	rules << -> b { b.opera? && b.version.to_i >= 12 }
	rules << -> b { b.chrome? && b.version.to_i >= 37 }
	rules << -> b { b.firefox? && b.tablet? && b.android? && b.version.to_i >= 14 }
end