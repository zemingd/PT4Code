n_arr = gets.split("")

if (n_arr[0] == n_arr[1]) && (n_arr[1] == n_arr[2]) ||
   (n_arr[1] == n_arr[2]) &&  (n_arr[2]== n_arr[3])
  puts "Yes"
else
  puts "No"
end
