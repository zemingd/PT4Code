l, r = gets.split(' ').map(&:to_i)

min =
  (l...r).to_enum.min do |i, ii|
    j = i + 1
    jj = ii + 1
    (i * j % 2019) <=> (ii * j % 2019)
  end

# answers = ((-(2019/2))..(2019/2)).to_enum.reject { |a| a <= 0 }

puts (min * (min+1)) % 2019