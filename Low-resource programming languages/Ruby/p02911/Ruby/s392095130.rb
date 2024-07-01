n,k,q = gets.strip.split.map(&:to_i)
array = []
while number = gets
  array << number.chomp.to_i
end
(1..n).each do |x|
  if k-q+array.count(x)>0
    puts "Yes"
  else
    puts "No"
  end
end