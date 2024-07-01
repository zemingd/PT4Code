x = gets.to_i

ans = 0

1.upto(1000) do |b|
  2.upto(1000) do |p|
    break if b**p > 1000
    break if b**p > x

    ans = b**p if b**p >= ans
  end
end

puts ans
