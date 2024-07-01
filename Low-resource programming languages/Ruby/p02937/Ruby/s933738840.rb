s = gets.chomp
t = gets.chomp

sd = s*10000000000000

lidx = 0
found = true
t.chars do |c|
  lidx = sd.index(c, lidx)
  if lidx.nil?
    found = false
    break
  end
end

if found
  puts lidx+1
else
  puts -1
end