d,n = gets.chomp.split.map(&:to_i)

if n != 100
  puts n*(100**d)
else
  puts 101*(100**d)
end
