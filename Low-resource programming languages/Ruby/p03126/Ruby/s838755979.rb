n, m = gets.chomp.split.map(&:to_i)
hs = Hash.new(0)
n.times do |_|
  _, *a = gets.chomp.split.map(&:to_i)
  a.each {|i| hs[i] += 1 }
end
puts hs.values.count(n)