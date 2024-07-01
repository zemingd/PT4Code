# https://atcoder.jp/contests/abc128/tasks/abc128_c

MOD = 2

N, M = gets.split.map(&:to_i)
bulbs_with_switches = []
M.times do
  bulbs_with_switches << gets.split.map(&:to_i)
end
ps = gets.split.map(&:to_i)

ans = 0
(0..(2 ** N - 1)).each do |i|
  on_off_list = format("%0#{N}d", i.to_s(2)).chars

  off_switch_ids = []
  on_off_list.each_with_index do |flg, idx|
    off_switch_ids << idx + 1 if flg == '0'
  end

  all_lighting = true
  bulbs_with_switches.each_with_index do |bulb_with_switches, idx|
    unless (bulb_with_switches[1..-1] - off_switch_ids).size % 2 == ps[idx]
      all_lighting = false
      break
    end
  end

  ans += 1 if all_lighting
end

puts ans
