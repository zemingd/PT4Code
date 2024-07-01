a, v = gets.split(" ").map(&:to_i)
b, w = gets.split(" ").map(&:to_i)
t = gets.to_i
oni = v*t
nige = w*t
if a <= b
  if a+oni >= b+nige
    puts "YES"
  else
    puts "NO"
  end
else
  if b-nige >= a-oni
    puts "YES"
  else
    puts "NO"
  end
end