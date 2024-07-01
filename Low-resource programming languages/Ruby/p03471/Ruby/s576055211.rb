n, y = gets.strip.split.map(&:to_i)
 
(0..n).each do |i|
  (0..(n-i)).each do |j|
    if y == 10000*i + 5000*j + 1000*(n-i-j)
      puts "#{i} #{j} #{n-i-j}"
      exit
    end
  end
end
 
puts "-1 -1 -1"
