a,b=gets.split.map(&:to_i)
s=gets.to_s
if s[a]=='-'
  if s[0..a-1] =~ /[0-9]+/ && s[a+1,b] =~ /[0-9]+/
    puts :Yes
  else
    puts :No
  end
else
  puts :No
end