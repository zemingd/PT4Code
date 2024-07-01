N = gets.to_i
A = gets.split(" ")

if N != A.uniq.size then
  p "No"
else
  p "Yes"
end