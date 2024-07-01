n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) }

MAX_V = 1_000_000_000

result = 0
leftest = 0
loop do
  del_indexes = []
  break_flg = true
  leftest = list.min_by.with_index(0) do |l, i|
    a, b = l
    if a >= leftest
      break_flg = false
      b
    else
      del_indexes << i
      MAX_V
    end
  end[1]
  break if break_flg
  result += 1
  # NOTE: 大きい方から削除しないとずれる
  del_indexes.sort.reverse.each { |i| list.delete_at(i) }
end

puts result
