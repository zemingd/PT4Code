n = STDIN.gets
a = STDIN.gets.split(' ').map{|x| x.to_i}
d = true
b = Array.new(100000000, 0)
a.each do |x|
  if b[x-1] == 0
    b[x-1] = 1
  else
    puts "NO"
    d = false
    break
  end
end
puts "YES" if d