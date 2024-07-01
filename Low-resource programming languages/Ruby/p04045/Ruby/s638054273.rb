N, K = gets.chomp.split.map(&:to_i)
DS = gets.chomp.split
m = N
while true
  if m.to_s.split('').all? { |s| !DS.include?(s) }
    puts m
    exit
  end
  m += 1
end
