n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
m.times do |i|
  b, c = gets.chomp.split.map(&:to_i)
  j = 0
  while j < b
    break if a[j] >= c
    j += 1
  end

  a.slice!(0,j)

  if j==b
    num = a.bsearch{|x| x >= c}
    if num
      ix = a.index(num)
    else
      ix = n - j
    end
  else
    ix = 0
  end

  a.insert(ix,*([c]*j))
end

puts(a.reduce(&:+))