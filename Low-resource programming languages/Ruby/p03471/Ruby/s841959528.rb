n, y = gets.split.map &:to_i

(0..n).each do |a|
  (0..n-a).each do |b|
    c = n - a - b
    if a * 10000 + b * 5000 + c * 1000 == y
      puts "#{a} #{b} #{c}"
      exit
    end
  end
end
puts "-1 -1 -1"