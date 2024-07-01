a,b,c,d=gets.split.map(&:to_i)
if a-c <= d and a-c >= -d then puts "Yes" 
elsif a-b <= d and a-b >= -d and b-c <= d and b-c >= -d then puts "Yes"
else puts "No" end