def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = cin
hs = cin

h = 0
c = 0
hs.each do |x|
  if x >= h then
    c += 1
    h = x
  end
end
  
puts c
