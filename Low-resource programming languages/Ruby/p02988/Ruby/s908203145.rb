def main
  n = gets.chomp.to_i
  array = gets.chomp.split(' ').map(&:to_i)
  count = 0

  (0...n - 2).each do |i|
    count += 1 if ((array[i] < array[i + 1]) && (array[i + 1] < array[i + 2])) || ((array[i] > array[i + 1]) && array[i + 1] > array[i + 2])
  end
  print count
end

main
