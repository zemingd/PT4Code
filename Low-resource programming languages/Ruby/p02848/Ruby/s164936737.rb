
def rot(c, dist)
  new_cord = c.ord + dist
  if new_cord > 'Z'.ord
    new_cord = 'A'.ord + (new_cord - 'Z'.ord - 1)
  end
  return new_cord.chr
end

def solve()

  n = gets.to_i
  strs = gets.chomp.chars
  res = []
  strs.each do |c|
    res << rot(c, n)
  end
  puts res.join
end

solve