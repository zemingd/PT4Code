#全パターン試す

input = Array.new(5){gets.to_i}

ans = []

def calc(time)
  tmp = time%10
  return tmp == 0 ? time : (time + 10 - tmp)
end

input.permutation(5) do |a, b, c, d, e|
  time = 0

  time += a
  time = calc(time)
  time += b
  time = calc(time)
  time += c
  time = calc(time)
  time += d
  time = calc(time)
  time += e

  ans.push(time)
end

p ans.min