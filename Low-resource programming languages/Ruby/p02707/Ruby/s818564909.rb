n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

count = []
a_arr.each do |a|
  count[a] = count[a].to_i + 1
end

1.step(n, 1) do |i|
  if count[i].nil?
    puts '0'
  else
    puts count[i]
  end
end
