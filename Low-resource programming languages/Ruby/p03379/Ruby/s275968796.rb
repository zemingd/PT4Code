n = gets.chomp.to_i
x_arr=gets.chomp.split(" ").map(&:to_i)

arr = x_arr.sort
a = arr[n/2-1]
b = arr[n/2]

x_arr.each do |x|
  if x <= a then
    puts b
  else
    puts a
  end
end
