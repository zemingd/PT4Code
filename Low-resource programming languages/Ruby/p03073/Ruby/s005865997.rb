def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

s = gets.chop
c1, c2 = 0, 0
s.chars.each_with_index do |x, i|
  if x == ((i%2==0) ? "0" : "1") then
    c1 += 1
  else
    c2 += 1
  end
  #p "#{c1},#{c2}"
end

puts [c1, c2].min
