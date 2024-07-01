N = gets.to_i
S = gets.chomp.chars

count_list = Array.new(N + 1)
count_list[0] = { left: 0, right: 0 }
S.each.with_index do |ch, i|
  prev = count_list[i]
  if ch == 'E'
    count_list[i + 1] = { left: prev[:left], right: prev[:right] + 1 }
  else
    count_list[i + 1] = { left: prev[:left] + 1, right: prev[:right] }
  end
end
ans = 10 << 60
N.times do |i|
  first = count_list[1]
  last = count_list[-1]
  current = count_list[i + 1]
  cost = if S[i] == 'E' # ->
    current[:left] + (last[:right] - current[:right])
  else # <-
    (current[:left] - 1) + (last[:right] - current[:right])
  end
  ans = cost if cost < ans
end
puts ans
