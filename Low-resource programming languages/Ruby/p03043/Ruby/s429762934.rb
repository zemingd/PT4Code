inputs = STDIN.gets.chomp.split(' ').map(&:to_i)

N = inputs[0]
K = inputs[1]

COIN_PROBABILITY = 0.5

answer = 0

(1..N).each do |i|
  if i >= K
    answer += 1.0/N
    next
  end
  base_probability = 1.0/N
  time = 0
  while true do
    #puts "#{i}, #{time}: #{i *(2**time)}, #{K}"
    break if K <=(i * (2**time))
    time += 1
  end
  answer += base_probability * (COIN_PROBABILITY**time)
end

puts answer