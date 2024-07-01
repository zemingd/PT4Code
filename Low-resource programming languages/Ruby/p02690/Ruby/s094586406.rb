x = gets.chomp.to_f
m = x**(1/2.0)
l = []
(1..m).each do |i|
  l << i if x % i == 0
end

l.each do |i|
  (-i..i).each do |j|
    a = i - j
    b = j
    if a**5-b**5==x
      puts "#{a} #{b}"
      return
    end
  end
end