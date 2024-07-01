def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, k = cin
s = gets.chop

cs = s.chars
cs[k-1].downcase!

puts cs.join
