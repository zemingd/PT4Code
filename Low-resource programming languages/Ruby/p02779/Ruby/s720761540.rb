N = gets.to_i
A = gets.split(" ")

if N != A.uniq.size then
  p "NO"
else
  p "YES"
end