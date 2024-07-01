n,x=readlines.map(&:to_i)
x.times do |i|
  if ((n-i)%500) == 0
    puts 'Yes'
    exit
  end
end
if n%500==0
  puts 'Yes'
else
  puts 'No'
end