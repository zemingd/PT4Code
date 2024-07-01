def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

require 'set'

n, m = cin

k1, *a1 = cin
s = Set.new(a1)
(n-1).times do
  k, *a = cin
  s &= Set.new(a)
end

puts s.length
