i=gets.to_i
numbers = gets.split(' ').map(&:to_i)
x=1
numbers.each do |n|
    x*=n
end
if x<=10**18
    puts x
else 
    puts -1
end
