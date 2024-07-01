h,N=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)

if a.inject(:+) >= h
    puts "Yes"
else
    puts "No"
end