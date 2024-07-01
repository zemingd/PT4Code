a=gets.chomp.split(&:to_i)
b=a.inject(:+)
for x in 0..2
  if b==a[x]*2
    puts "Yes"
    exit
  end
end
puts "No"