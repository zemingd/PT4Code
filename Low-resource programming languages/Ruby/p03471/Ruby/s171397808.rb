n,y = gets.strip.split.map(&:to_i)
I,J,K = -1,-1,-1

(0..n).each do |i|
  (0..n-i).each do |j|
    if i * 10000 + j * 5000 + (n-i-j) * 1000 == y
      I,J,K = i,j,n-i-j
    end
  end
end

puts "#{I} #{J} #{K}"