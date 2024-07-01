#set
n = gets.chomp.to_i
restaurants_arr = Array.new(n) { Array.new(3,0)}

0.upto(n -1) do |i|
  restaurants_arr[i][0] = i + 1
  restaurants_arr[i][1],restaurants_arr[i][2] = gets.chomp.split(" ")
  restaurants_arr[i][2] = restaurants_arr[i][2].to_i
end
i = 0
restaurants_arr.sort_by! {|keys| [keys[2], i += 1]}.reverse!.sort_by! {|keys| [keys[1], i += 1]}
p restaurants_arr
0.upto(n -1) do |i|
 print ("#{restaurants_arr[i][0]}\n")
end