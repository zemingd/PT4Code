def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

s = gets.chop.split(/[^ACGT]/)
puts s.map{|a|a.length}.max || 0