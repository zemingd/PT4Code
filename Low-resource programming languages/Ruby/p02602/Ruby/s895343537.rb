n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
for i in k..(n-1)
  if arr[i] > arr[i-k]
    puts "Yes"
  else
    puts "No"
  end
end