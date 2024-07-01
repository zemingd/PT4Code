_ = gets.to_i
monsters = gets.split.map(&:to_i)

def get_gcd(a, b)
  smaller, bigger = [a, b].sort
  if bigger % smaller == 0
    smaller
  else
    get_gcd(bigger-(bigger/smaller*smaller), smaller)
  end
end

current = monsters.shift
monsters.each do |monster|
  current = get_gcd(current, monster)
end
puts current
