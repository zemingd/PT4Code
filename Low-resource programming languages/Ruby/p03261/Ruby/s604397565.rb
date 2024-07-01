# frozen_string_literal: true

n = gets.to_i
w = []
n.times { w << gets.chomp }

w.each_cons(2) do |i|
  if i[0][-1] != i[1][0]
    puts :No
    exit
  end
end

puts w.uniq.size == n ? :Yes : :No