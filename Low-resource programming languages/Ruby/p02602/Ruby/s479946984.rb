n, k = *gets.split(" ").map(&:to_i)
a_list = gets.split(" ").map(&:to_i)

prev = nil
for i in 0..n do
  values = []
  max = i + (k -1)
  break if a_list.size == max
  current = a_list[i..max].inject(:*)
  if prev
    if prev < current
      puts 'Yes'
    else
      puts 'No'
    end
  end
  prev = current
end
