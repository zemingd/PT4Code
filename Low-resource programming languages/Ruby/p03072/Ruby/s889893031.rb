n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
h = [0] + h

ret = 0
n.times do |i|
  if h[0..i].map{|x| x <= h[i+1]}.all?
    ret += 1
  end
end

puts ret