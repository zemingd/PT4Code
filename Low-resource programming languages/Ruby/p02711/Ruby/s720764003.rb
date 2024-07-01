inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N = inputs[0]

is_7 = false
N.each_char do |d|
  is_7 = true if d == "7"
end

puts is_7 ? "Yes" : "No"
