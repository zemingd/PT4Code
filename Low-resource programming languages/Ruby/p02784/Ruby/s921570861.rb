io = STDIN
h,n=io.gets.split.map(&:to_i)
a=io.gets.split.map(&:to_i)

if h <= a.inject(:+)
  puts "Yes"
else
  puts "No"
end
