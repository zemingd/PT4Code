l, r = gets.strip.split(" ").map(&:to_i)

ans = 2019

l.upto(l + 2019) do |i|
  break if i > r

  (i + 1).upto(i + 2020) do |j|
    break if j > r

    m = ((i % 2019) * (j % 2019)) % 2019
    ans = m if m < ans
  end
end

puts ans
