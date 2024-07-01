h,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

if h <= a.inject(:+)
    puts "Yes"
else
    puts "NO"
end