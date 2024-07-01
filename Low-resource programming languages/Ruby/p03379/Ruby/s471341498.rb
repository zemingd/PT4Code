nu = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
ar_s = array.sort

for i in 0..nu - 1
  if array[i] >= ar_s[nu / 2]
    puts ar_s[(nu / 2) - 1]
  else
    puts ar_s[(nu / 2)]
  end
end
