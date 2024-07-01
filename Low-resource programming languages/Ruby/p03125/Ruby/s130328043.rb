def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a, b = cin

puts a + b if b%a == 0
puts b - a if b%a != 0
