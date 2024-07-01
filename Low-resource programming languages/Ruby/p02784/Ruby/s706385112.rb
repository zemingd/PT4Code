h,n=gets.split(" ").map(&:to_i)
a=gets.split(" ").map(&:to_i)
n=1
if a.sum>=h
    puts "Yes"
    exit
end
puts "No" 