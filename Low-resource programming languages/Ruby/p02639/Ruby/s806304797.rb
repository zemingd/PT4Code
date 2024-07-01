arr = gets.chomp.split(' ').map(&:to_i)
for i in 0..4
  if arr[i] == 0
    puts i+1
    exit
  end
end