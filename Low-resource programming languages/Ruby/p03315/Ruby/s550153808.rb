def main
  n = gets.chomp
  solve(n)
end

def solve(n)
  t = n.split('')
  puts t.count('+') - t.count('-')
end

main if $0 == __FILE__