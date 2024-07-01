lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
K = lines[0][1]

for i in 1..N-K do
  if lines[1][K+i-1] > lines[1][i-1] then
    puts "Yes"
  else
    puts "No"
  end
end