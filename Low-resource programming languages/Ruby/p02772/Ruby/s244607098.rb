n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i).select {|x| x%2 == 0}
i = 0
switch = true
while i < arr.size
  if arr[i] % 3 != 0 && arr[i] % 5 != 0
    switch = false
    break
  end
  i += 1
end

if switch
  puts "APPROVED"
else
  puts "DENIED"
end