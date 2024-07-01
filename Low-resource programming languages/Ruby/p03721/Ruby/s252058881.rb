N, K = gets.split.map(&:to_i)

num_map = Hash.new(0)

N.times do
  a, b = gets.split.map(&:to_i)
  num_map[a] += b
end

num_count = 0
num_map.keys.sort do |num|
  if num_count + num_map[num] >= K
    puts num
    break
  end

  num_count += num_map[num]
end
