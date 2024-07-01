# set
n = gets.chomp.to_i
p_arr = gets.chomp.split(" ").map(&:to_i)
min = p_arr[0]
count = 0

# main
0.upto(n - 1) do |i|
  if p_arr[i] > min then
    next   
  else
    min = p_arr[i]
    count += 1
  end
end

print ("#{count}\n")