
m = gets.split.map(&:to_i)
s = gets.split("")
if s.count("-") >= 2 || s.count("-") == 0 
  puts "No"
elsif s[0] != "-" && s[0..(m[0]-1)].length == m[0] && s[m[1]..(m[0]+m[1])].length == m[1]
    puts "Yes"
end