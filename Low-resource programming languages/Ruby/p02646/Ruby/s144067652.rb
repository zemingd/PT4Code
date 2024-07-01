a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

t.times do |n|
  if (v * n + a) == (w * n + b)
    puts 'YES'
    return
  end
  break if (v * n + a) > (w * n + b)
end
puts "NO"

