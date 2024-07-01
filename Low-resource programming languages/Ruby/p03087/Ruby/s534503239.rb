line = gets.chomp!
/(\d+)\s*(\d+)/ =~ line
N = $1.to_i
Q = $2.to_i

S = gets.chomp!

for cnt in 1..Q do
  ac = false
  count = 0
  line = gets.chomp!
  /(\d+)\s*(\d+)/ =~ line
  l = $1.to_i 
  r = $2.to_i 
  tar = S.slice((l-1)..(r-1))
  p tar.scan(/(AC)/).size
end
