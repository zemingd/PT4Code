def solve(n, str)
  n.times { str << gets.chomp }
  str.sort.join
end

if $PROGRAM_NAME == __FILE__
  str = []
  n = gets.chomp.to_i
  puts solve(n, str)
end