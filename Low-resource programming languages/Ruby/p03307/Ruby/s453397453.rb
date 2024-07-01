def main
  n = gets.chomp.to_i
  solve(n)
end

def solve(n)
  if n % 2 == 0
    puts n
  else
    puts 2 * n
  end
end

main if $0 == __FILE__