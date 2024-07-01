n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
ary1.sort!
count = 0
(n-2).times do |i|
  (n-1-i).times do |j|
    a = ary1[i]
    b = ary1[j+1+i]
    count = count + ary1.count{|c|  c < a+b and c>b}
  end  
end

puts count