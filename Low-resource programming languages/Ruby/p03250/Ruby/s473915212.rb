num = gets.chomp.split.map(&:to_i)

num.sort!.reverse!

puts (num[0].to_s + num[1].to_s).to_i + num[2]