def method_name(l, r)
  range = (l..r).to_a
  size = range.size
  mod_l = l % 2019
  return 0 if mod_l == 0 || mod_l + size - 1 >= 2019

  qs = []
  range.combination(2) do |p1, p2|
    q = p1 * p2 % 2019
    return 0 if q == 0
    qs << q
  end
  return qs.min
end

l, r = gets.chomp.split.map(&:to_i)

puts method_name(l, r)