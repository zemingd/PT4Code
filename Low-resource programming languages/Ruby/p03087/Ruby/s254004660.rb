# frozen_string_literal: true

n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.split('')
lr = []
q.times do
  lr.push gets.split.map(&:to_i)
end
ac = []
flaga = false
count = 0
0.upto(n - 1) do |i|
  case s[i]
  when 'A'
    flaga = if flaga
              false
            else
              true
            end
  when 'C'
    if flaga
      flaga = false
      count += 1
    end
  else
    flaga = false
  end
  ac.push count
end
lr.each do |e|
  l = e.first - 1
  r = e.last - 1
  puts (ac[r] - ac[l])
end
