n, k = *gets.split(" ").map(&:to_i)
a_list = gets.split(" ").map(&:to_i)

prev = nil
current = nil
for i in 0..n do
  max = i + (k - 1)
  break if a_list.size == max
  if i == 0
    current = a_list[i..(max)].inject(:*)
  else
    current = current / a_list[i - 1] * a_list[max]
  end
  if prev
    if prev < current
      puts 'Yes'
    else
      puts 'No'
    end
  end
  prev = current
end
