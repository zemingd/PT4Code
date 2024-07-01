n = gets.split.join.to_i
1.upto(Math::sqrt(n).ceil) do |i|
  if i * i == n
    puts "Yes"
    exit
  end
end
puts "No"