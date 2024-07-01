x,a,b=gets.split.map(&:to_i)
e=-a+b
if e<=0
  puts :delicious
elsif e<=x
  puts :safe
else
  puts :dangerous
end
