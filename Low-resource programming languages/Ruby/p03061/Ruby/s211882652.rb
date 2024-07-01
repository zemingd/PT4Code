n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i)
def gcd(list)
  c = list.size
  return 0 if c == 0
  return list[0] if c == 1

  calc(list)
end

def calc(list)
  c = list.size

  # 末尾2要素に対してユークリッド互除法
  v = list[-1] % list[-2]
  if v == 0
    return list[-2] if c == 2
    list.pop
    return calc(list)
  end

  list[-1] = list[-2]
  list[-2] = v
  calc(list)
end

gcds = []
n.times do |i|
  list = a.clone
  list.delete_at(i)
  gcds << gcd(list)
end

puts gcds.max