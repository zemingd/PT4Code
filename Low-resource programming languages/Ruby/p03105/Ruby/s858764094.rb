input = readlines.map(&:chomp)
info = input.first.split(" ")

price_by_sound = input[0].to_i

money = info[1].to_i

how_many_times_takahashi_wanna_listen_to = info[2].to_i

paid_money = 0
times = 0

while paid_money <= money && times <= how_many_times_takahashi_wanna_listen_to do
  paid_money += price_by_sound
  times += 1
end

result = times - 1

puts result