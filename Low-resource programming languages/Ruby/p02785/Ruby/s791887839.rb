# set
n,k = gets.chomp.split(" ").map(&:to_i)
enemy_arr = gets.chomp.split(" ").map(&:to_i)
enemy_arr.sort!.reverse!
enemy_arr_length = enemy_arr.length
count = 0

# main
if enemy_arr.length > k then
  enemy_arr.shift(k)
  (n - k).times do
    count += enemy_arr.shift()
  end
end

print ("#{count}\n") 