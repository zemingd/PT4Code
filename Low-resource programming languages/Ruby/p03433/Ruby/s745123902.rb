n,a=gets.split.map(&:to_i)
x.times do
  if ((n-x)%500) == 0
    puts 'Yes'
  end
end
puts 'No'