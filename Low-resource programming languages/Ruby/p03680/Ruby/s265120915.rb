N = gets.to_i
btn = Array.new(N, true)
a = []
cnt = 0

N.times do
  a << gets.to_i
end

nxt = 0
loop do
  break if btn[nxt] == false
  btn[nxt] = false
  nxt = a[nxt]-1
  cnt += 1
  if nxt == 1
    puts cnt
    exit
  end
end

puts -1