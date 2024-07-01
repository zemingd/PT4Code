def main(l,r)
  (L..R).each do |i|
    mod = i % 2019
    return 0 if mod == 0
  end
  return L * L+1
end

L, R = gets.chomp.split.map(&:to_i)

p main(L, R)