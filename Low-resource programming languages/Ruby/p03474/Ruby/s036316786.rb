m = gets.split.map(&:to_i)
s = gets,split("")
if s[m] == "-"
  if s[0..(m[0]-1)].length == m[0] && s[m[1]..(m[0]+m[1]+1)] == m[1]
    puts "Yes"
  else
    puts "No"
  end
end