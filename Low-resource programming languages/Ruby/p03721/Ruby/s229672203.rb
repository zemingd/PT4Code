n,m = gets.chomp.split.map(&:to_i)
order = []
count = 0
n.times do
  input = gets.chomp.split.map(&:to_i)
  count += input[1]
  if count >= m
    puts input[0]
    break
  end
end