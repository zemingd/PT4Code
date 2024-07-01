A, B, C = $stdin.read.chomp.split(" ").map(&:to_i)

if A > B
  puts 0
else
  max_count = (B / A).floor
  if max_count < C
    puts max_count
  else
    puts 
    C
  end
end