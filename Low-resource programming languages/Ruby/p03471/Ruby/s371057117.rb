n,y = gets.chomp.split(" ").map(&:to_i)

(n+1).times do |i|
  (n+1-i).times do |j|
    k = n-i-j
    if i*10000 + j*5000 + k*1000 == y
      puts "#{i} #{j} #{k}"
      exit
    end
  end
end

puts "-1 -1 -1"