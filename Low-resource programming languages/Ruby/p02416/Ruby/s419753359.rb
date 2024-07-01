until (arr = gets.chomp.split("").map(&:to_i)) == [0]
  sum = 0
  arr.length.times do |i|
    sum = sum + arr[i]
  end
  puts sum
end