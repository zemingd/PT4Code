n = gets.to_i
ary = []
n.times{
  ary << 0
}

(1..45).each do |i|
  (1..45).each do |j|
    (1..45).each do |k|
      check = i*i + j*j + k*k + i*j + j*k + i*k
      next if check > n
      ary[check-1] += 1
    end
  end
end
puts ary