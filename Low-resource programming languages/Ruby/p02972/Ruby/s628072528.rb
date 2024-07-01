def preparing_boxes(a)
  b = Array.new(a.size, 0)
  (a.size).downto(1) do |i|
    sum = 0
    (i - 1).step(a.size - 1, i) do |j|
      sum += b[j]
    end

    b[i - 1] = 1 if sum % 2 != a[i - 1]
  end

  ans = []
  b.each_with_index { |n, i| ans << i + 1 if n == 1 }
  puts ans.size
  puts ans.join("\s") unless ans.empty?
end

gets
a = gets.split.map(&:to_i)
preparing_boxes(a)
