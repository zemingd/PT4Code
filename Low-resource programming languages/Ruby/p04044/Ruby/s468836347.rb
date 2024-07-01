n_l = gets.chomp.split(' ')
ss = []
smin = ''

n_l[0].times do |s|
  ss << s
end

ss.sort

ss.each do |s|
  smin.join(s)
end

puts smin