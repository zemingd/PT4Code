n = gets.chomp!.to_i


ls = gets.split(" ").map(&:to_i)
qs = ls.uniq


if ls.length != qs.length
  puts "No\n"
else
  puts "Yes\n"
end