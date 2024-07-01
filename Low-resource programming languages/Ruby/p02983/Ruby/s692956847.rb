l,r = gets.chomp.split(' ').map(&:to_i)
if r - l >= 673
  puts 0
else
  min = 2019
  arr = (l..r).to_a
  i = 0
  while i < arr.size - 1
    j = i + 1
    while j < arr.size
      prod = ((arr[i] % 2019) * (arr[j] % 2019)) % 2019
      if prod < min
        min = prod
      end
      j += 1
    end
    i += 1
  end
  puts min
end