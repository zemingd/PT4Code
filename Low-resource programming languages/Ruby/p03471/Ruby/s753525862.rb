n,y = gets.split.map(&:to_i)

for i in 0..n
  break if y < i*10000 
  for j in 0..(n-i)
    left = y - (i*10000 + j*5000)
    break if left < 0
    if left % 1000 == 0 && left <= (n-i-j)*1000 && left/1000 == n-i-j
      puts "#{i} #{j} #{left/1000}"
      exit
    end
  end
end

puts "-1 -1 -1"