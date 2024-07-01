def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a, b = cin
puts [2*a-1, 2*b-1, a+b].max