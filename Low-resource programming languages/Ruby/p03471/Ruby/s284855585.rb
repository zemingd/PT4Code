n,y = gets.chomp.split(" ").map(&:to_i)
(n+1).times do |i|
  (n-i+1).times do |j|
    sum = i * 10000 + j * 5000 + (n-i-j) * 1000
    if y == sum
      puts "#{i} #{j} #{n-i-j}"
      exit
    end
  end
end
puts "-1 -1 -1"