gets
ar = gets.split.map(&:to_i)
co = 0
(ar.size - 2).downto(0) do |i|
  (i + 1).times do |j|
    if ar[j] > ar[j + 1]
      ar[j], ar[j + 1] = ar[j + 1], ar[j]
      co += 1
    end
  end
end
puts ar.join(" ")
puts co

