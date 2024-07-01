nu = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
array2 = []
ar_s = []

for i in 0..nu - 1
  array2 = Marshal.load(Marshal.dump(array))
  array2.delete_at(i)
  ar_s = array2.sort
  puts ar_s[(nu / 2) - 1]
end
