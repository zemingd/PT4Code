def main
  n = gets.chomp
  solve(n)
end

def solve(n)
  s = n.split('').map(&:to_i).inject(:+)
  puts n.to_i % s == 0 ? 'Yes' : 'No'
end

main if $0 == __FILE__