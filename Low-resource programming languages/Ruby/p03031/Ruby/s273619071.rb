n, m = gets.split.map(&:to_i)

array = []
m.times do
  ks = gets.split.map { |i| i.to_i - 1 }
  ks.shift
  array << ks
end

p = gets.split.map(&:to_i)


count = 0
whole = 2 ** n
whole.times do |i|
  switch = []
  n.times do
    switch << i % 2
    i /= 2
  end

  is_good = true

  m.times do |k|
    small_count = 0
    array[k].each do |k1|
      if switch[k1] == 1
        small_count += 1
      end

    end

    unless (small_count % 2 ) == p[k]
      is_good = false
    end
  end

  if is_good
    count += 1
  end
end

puts count