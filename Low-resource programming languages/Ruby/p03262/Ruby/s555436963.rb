n, X = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
ans = (ary.min_by{|x| (x - X).abs} - X).abs
if ans == 1
  puts ans
  exit
end
 
ary.each do |x|
  ans = ans.gcd((x - X).abs)
  if ans == 1
    puts ans
    exit
  end
end
 
puts ans
