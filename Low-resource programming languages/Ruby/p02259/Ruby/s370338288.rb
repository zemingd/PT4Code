n = gets.to_i
as = gets.split.map(&:to_i)

flag = true
i = 0
count = 0

while flag
  flag = false

  (n - 1).downto(i + 1) do |j|
    next unless as[j] < as[j - 1]

    as[j], as[j - 1] = as[j - 1], as[j]
    count += 1
    flag = true
  end

  i += 1
end

puts as.join(' ')
p count

