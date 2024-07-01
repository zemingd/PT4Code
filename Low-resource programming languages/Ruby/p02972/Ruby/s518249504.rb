def preparing_boxes(a)
  b = Array.new(a.size, 0)
  (a.size).downto(1) do |i|
    sum = 0
    (i - 1).step(a.size - 1, i) do |j|
      sum += b[j]
    end

    b[i - 1] = 1 if sum % 2 != a[i - 1]
  end

  puts b.size
  puts b.join("\s")
end

gets
a = gets.split.map(&:to_i)
preparing_boxes(a)