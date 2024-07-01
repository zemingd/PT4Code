n,l = gets.chomp.split().map(&:to_i)
s = []
n.times do
  s.push gets.chomp.split(//)
end

puts s.sort.join('')
