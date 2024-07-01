S = gets.chomp
T = gets.chomp

list = Hash.new { |h, k| h[k] = [] }

S.each_char.with_index do |s, i|
  list[s] << i + 1
end

idx = 1
loop_cnt = 0

T.each_char do |t|
  if list[t].empty?
    puts -1
    exit
  end

  i = list[t].bsearch { |x| x > idx } || list[t].first

  if i < idx
    loop_cnt += 1
  end

  idx = i
end

puts loop_cnt * S.size + idx
