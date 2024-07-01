dataset = STDIN.read.split("\n").split(" ").map(&:to_i)

dataset.each do |data|
  puts  (data[0] + data[1]).to_s.size
end