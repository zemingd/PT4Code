X = gets.chomp.split(' ').map(&:to_i)
N = gets.chomp.split(' ').map(&:to_i)

a_array = N
sum = 0
a_array.each {|e| sum += e}

result = sum / (4*X[1])

result_arr = N.sort!.reverse!

for num1 in 0..X[1]-1 do
  if result_arr[num1] > result && num1 == X[1]-1
    puts "Yes"
    break
  elsif result_arr[num1] < result
    puts "No"
    break
  end
end