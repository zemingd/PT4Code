n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
while a_arr.length > 0 do
  tmp_arr = []
  a_arr.each do |a|
    if a % 2 == 0 then
      tmp_arr << a / 2
      count += 1
    end
  end
  a_arr = tmp_arr
end

puts count
