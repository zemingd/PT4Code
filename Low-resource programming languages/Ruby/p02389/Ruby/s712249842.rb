input = gets.chomp
ary = input.split

s = ary[0].to_i * ary[1].to_i
l = ary[0].to_i * 2 + ary[1].to_i * 2
puts "#{s} #{l}"