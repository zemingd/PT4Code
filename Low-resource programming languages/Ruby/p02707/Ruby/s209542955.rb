n = gets.chomp!.to_i
a = gets.chomp!.split(" ").map(&:to_i)

result = Hash[a.group_by(&:itself).map {|k, v| [k, v.size] }]

1.upto(n) do |i|
  puts result[i] || 0
end
