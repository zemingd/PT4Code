n,k = STDIN.gets.split.map(&:to_i)
input = STDIN.gets.strip.split('')
candidates = []
input.each.with_index do |str, i|
  if i == 0 || input[i-1] != input[i]
    candidates.push [str, i]
  end
end

max = 0
0.upto(candidates.length - 1) do |i|
  len = candidates[i][0] == '0' ? k*2 : k*2+1
  from = candidates[i][1]
  to = (candidates[i+len] || [nil, n])[1]
  max = [max, to - from].max
end
puts max
