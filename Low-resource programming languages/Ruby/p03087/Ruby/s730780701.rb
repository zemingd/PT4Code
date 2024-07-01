# frozen_string_literal: true

n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.split('')
lr = []
q.times do
  lr.push gets.chomp.split.map(&:to_i)
end
ac = []
flaga = false
count = 0
s.each do |c|
  case c
  when 'A'
    flaga = !flaga
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
