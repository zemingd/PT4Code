io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=Array.new(n)
even=(1..n).select(&:even?)
odd=(1..n).select(&:odd?)
if n.even?
  ar=even.reverse+odd
else
  ar=odd.reverse+even
end
puts ar.map{|i|a[i-1]}.join
