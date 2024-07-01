require 'prime'
def main
  n = gets.chomp.to_i
  list = n.times.map{ gets.chomp.to_i }
  solve(list)
end

def solve(list)
  c = 1
  list.each do |n|
    c = c.lcm(n)
  end
  puts c
end

main if $0 == __FILE__