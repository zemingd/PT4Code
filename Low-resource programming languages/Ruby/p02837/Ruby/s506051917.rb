n = gets.chomp.to_i

b = []
n.times do |i|
  b[i] = []
  a = gets.chomp.to_i
  a.times do
    x, y = gets.chomp.split.map(&:to_i)
    b[i].push([x, y])
  end
end

ans = 0
['o', 'x'].repeated_permutation(n) do |a|
  flag = false
  b.each_with_index do |c, index|
    c.each do |x, y|
      if a[index] == 'o'
        if y == 1
          if a[x-1] == 'o'
          else
            flag = true
            break
          end
        else
          if a[x-1] == 'x'
          else
            flag = true
            break
          end
        end
      end
    end
    break if flag
  end
  next if flag
  tmp = a.count('o')
  ans = tmp if tmp > ans
end
p ans
