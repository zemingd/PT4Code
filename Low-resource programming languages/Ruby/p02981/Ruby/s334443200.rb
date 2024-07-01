def main(l,r)
  min = 2020
  (l..r-1).each do |i|
    (i+1..r).each do |j|
      mod = (i*j)%2019
      min = mod if min >= mod
      break if min == 0
    end
    break  if min == 0
  end
  return min
end

L, R = gets.chomp.split.map(&:to_i)
p L, R
p main(L, R)