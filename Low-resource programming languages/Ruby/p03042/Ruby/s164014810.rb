io = STDIN
s=io.gets.chomp
if s=~/(0\d|1[012])(0[1-9]|1[012])/
  puts 'AMBIGUOUS'
elsif s=~/\d\d(0[1-9]|1[012])/
  puts 'YYMM'
elsif s=~/(0[1-9]|1[012])\d\d/
  puts 'MMYY'
else
  puts 'NA'
end
