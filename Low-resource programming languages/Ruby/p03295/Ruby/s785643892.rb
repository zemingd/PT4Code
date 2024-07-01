n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) }

MAX_V = 1_000_000_000

result = 0
leftest = 0
loop do
  break_flg = true
  leftest = list.min_by do |a, b|
    if a >= leftest
      break_flg = false
      b
    else
      MAX_V
    end
  end[1]
  break if break_flg
  result += 1
end

puts result
