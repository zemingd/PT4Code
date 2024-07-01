# frozen_string_literal: true

n, m = gets.split.map(&:to_i)

switches = []
m.times do
  tmp = gets.split.map(&:to_i)
  tmp.shift(1)
  switches << tmp.map { |item| item - 1 }
end

ps = gets.split.map(&:to_i)

cnt = 0
[true, false].repeated_permutation(n) do |ary|
  flg = true
  ps.each_with_index do |mod, index|
    switch = switches[index]

    dummy_count = 0
    switch.each do |s|
      value = ary[s] ? 1 : 0
      dummy_count += value
    end

    flg = dummy_count % 2 == mod

    break unless flg
  end
  cnt += 1 if flg
end

puts cnt
