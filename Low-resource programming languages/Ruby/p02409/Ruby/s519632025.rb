
count = gets.to_i

arr = []
room_arr = []

count.times do
  arr << gets.split(" ").map(&:to_i)
end

4.times do
  ar = []
  3.times do
    ar << Array.new(10, 0)
  end
  room_arr << ar
end

arr.each do |val|
  val[3] = 0 if val[3] <= 0
  room_arr[val[0] - 1][val[1] - 1][val[2] - 1] = val[3]
end

str = ""

room_arr.each_with_index do |arr, ind|
  arr.each do |arr2|
    arr2.each do |val|
      str += " " + val.to_s
    end
    str += "\n"
  end
  break if ind == 3
  str += "####################\n"
end

puts str