def main
  a, b, c = gets.chomp.split(' ').map(&:to_i)
  puts "#{[c - (a - b), 0].max}"
end

def solve(n)
  if n % 2 == 0
    puts n
  else
    puts 2 * n
  end
end

main if $0 == __FILE__