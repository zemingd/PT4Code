n=gets.to_i
str=gets.chomp.split.map(&:to_i)
res=str.inject(:*)
if str.join("").to_s.count("0")>18
  p -1
else
  p res>(10**18) ?-1:n
end
