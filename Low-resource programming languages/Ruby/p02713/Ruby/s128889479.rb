k = gets.to_i
arr = [*1..k]
arr = arr.repeated_permutation(3).to_a
sum = 0
arr.length.times do |i|
   sum += (arr[i][0].gcd(arr[i][1])).gcd(arr[i][2])
end
puts sum