a,b,c = gets.split.map(&:to_i)

aa = Math.sqrt(a)
bb = Math.sqrt(b)
cc = Math.sqrt(c)

if aa+bb<cc
  puts 'Yes'
else
  puts 'No'
end
