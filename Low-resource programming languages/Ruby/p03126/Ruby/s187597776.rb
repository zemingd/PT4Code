n,m = gets.chomp.split(" ").map(&:to_i)
array = []

(1..n).each do
  local_array = gets.chomp.split(" ").map(&:to_i)
  local_array.delete_at(0)
  array.push(local_array.sort)
end

flag = Array.new(array[0].length, true)
cnt = array[0].length

array[0].each_with_index do |number,idx|
  array.each do |array|
    if !array.include?(number)
        cnt -= 1
        break
    end
  end
end

puts cnt