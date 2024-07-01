array = gets.chomp.split("").map(&:to_i)
answer = ""

array.each_index do |number|
  if array[number] == 1
    answer = answer + "9"
  else
    answer = answer + "1"
  end
end

puts answer