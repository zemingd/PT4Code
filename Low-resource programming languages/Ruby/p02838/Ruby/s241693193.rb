n = gets.to_i
a = gets.split.map(&:to_i)
mod = 10**9 + 7

ans = 0
two_factor = 1
60.times do |i|
  one = 0
  zero = 0
  a.each do |a_x|
    if a_x[i] == 1
      one += 1
    else
      zero += 1
    end
  end

  add = (one * zero) % mod * two_factor % mod
  ans = (ans + add) % mod
  two_factor = (two_factor * 2) % mod
end

puts ans
