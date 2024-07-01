def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.to_i
s = gets.chop.chars

ws = s.reverse.inject([0]) {|m,c| m << ((c=='.') ? m.last+1 : m.last)}
bs = s.inject([0]) {|m,c| m << ((c=='#') ? m.last+1 : m.last)}
ws << ws.last
bs << bs.last

#p ws
#p bs

min = 10**18
[*(0..n)].each do |i|
  x = bs[i] + ws[n-i]
  #p x
  min = [min,x].min
end

puts min