@pow2 = (0..30).to_a.map do |i|
  2**i
end

def t(n)
  @pow2.reverse.each do |p|
    return @pow2.index(p) if n.to_f/p.to_f == (n/p).to_i
  end
end
def solve(list)
  s = 0
  l = list.map do |n|
    s += t(n.to_i)
  end
  puts s
end

def main
  gets
  list = gets.chomp.split(" ")
  solve(list)
end

main