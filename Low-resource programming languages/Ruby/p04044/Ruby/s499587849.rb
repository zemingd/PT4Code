n_l = gets.chomp.split(' ').map(&:to_i)
ss = []

n_l[0].times do
  ss << gets.chomp
end

ss.sort!

puts ss.join