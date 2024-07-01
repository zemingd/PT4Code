# frozen_string_literal: true

# n = gets.to_i
# a = gets.split.map(&:to_i)

s = gets.chomp
q = gets.to_i
flagReverse = false
q.times do
  query = gets.chomp.split.map(&:to_s)

  if query[0] == '1'
    flagReverse = !flagReverse
  elsif query[0] == '2'
    if (query[1] == '1' && !flagReverse) || (query[1] == '2' && flagReverse)
      s = query[2] + s
    else
      s += query[2]
    end
  end
end
s.reverse! if flagReverse
puts s
