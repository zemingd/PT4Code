n = gets.to_i
a = [gets.chomp]
res = ""
(1..(n-1)).each do |i|
  tmp = gets.chomp
  if (a.include?(tmp)) || (a[i-1].chars.last != tmp.chars.first)
    res = 'No'
    break
  else
    a[i] = tmp
  end
end
res = 'Yes' if res != 'No'
puts res