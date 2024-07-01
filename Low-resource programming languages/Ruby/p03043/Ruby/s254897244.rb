n,k = gets.chomp.split(" ").map(&:to_i)

k_arr = []
tmp_k = k
pow = 2
max_pow = 2
while tmp_k > 0 do
  max_pow = pow
  k_arr << [tmp_k, pow]
  tmp_k /= 2
  pow *= 2
end
k_arr << [0, max_pow * 2]

a = 0
(1..n).each do |i|
  if i <= k - 1  then
    k_arr.each do |(tmp_k, pow)|
      if i > tmp_k then
        a += (max_pow * 2 / (pow))
        break
      end
    end
  else
    a += max_pow
  end
end

puts a / (n * max_pow).to_f
