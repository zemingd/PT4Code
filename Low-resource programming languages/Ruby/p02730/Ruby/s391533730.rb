io = STDIN
str=io.gets.chomp
def check(str)
  n=str.size
  str==str.reverse &&
  str[0...(n-1)/2]==str[0...(n-1)/2].reverse &&
  str[(n+3)/2-1..-1]==str[(n+3)/2-1..-1].reverse
end
if check(str)
  puts 'Yes'
else
  puts 'No'
end
