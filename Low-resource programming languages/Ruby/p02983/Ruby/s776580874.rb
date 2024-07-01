L, R = gets.split.map(&:to_i)
mod = 2019

L_mod = L % mod
R_mod = R % mod

diff = R - L

if diff <= 2019
  if R_mod <= L_mod
    puts 0
  else
    min = 2019
    (L..R).each do |i|
      (L..R).each do |j|
        next if i >= j

        if (i * j) % mod <= min
          min = (i * j) % mod
        end
      end
    end

    puts min
  end
else
  puts 0
end
