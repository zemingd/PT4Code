# frozen_string_literal: true

# n = gets.to_i
# a = gets.split.map(&:to_i)

s = gets.chomp
q = gets.to_i
q.times do
  query = gets.chomp.split.map(&:to_s)

  if query[0] == '1'
    s.reverse!
  elsif query[0] == '2'
    if query[1] == '1'
      s = query[2] + s
    elsif query[1] == '2'
      s += query[2]
    end
  end
end

puts s
