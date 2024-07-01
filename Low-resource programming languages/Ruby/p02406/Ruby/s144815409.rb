def nabe(num)
  if num % 3 == 0
    num
  elsif num.to_s =~ /3/
    num
  else
    nil
  end
end

n = gets.to_i
nums = []
1.upto(n) do |i|
  nums << nabe(i)
end
print "\s"
puts nums.compact.join("\s")