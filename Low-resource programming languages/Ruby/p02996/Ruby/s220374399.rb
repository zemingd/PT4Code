n = gets.to_i
hs = Hash.new
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  hs[b] ||= []
  hs[b] << a
end

k = hs.keys.sort!
t = 0
k.each do |i|
  c = hs[i].inject(:+)
  if i - c < t
    puts "No"
    exit
  end
  t += c
end
puts "Yes"