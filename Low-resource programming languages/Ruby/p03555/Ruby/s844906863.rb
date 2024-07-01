arr1 = gets.chomp.split('')
arr2 = gets.chomp.split('')

if arr1[0] == arr2[2] && arr1[1]== arr2[1] && arr1[2] == arr2[0]
  puts 'YES'
else
  puts 'NO'
end
