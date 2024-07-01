N = gets.to_i
A = N.to_s
list = A.chars.map(&:to_i)
sum = 0
list.each{|i| sum+=i}
if N%sum==0
    puts "Yes"
else
puts "No"
end
