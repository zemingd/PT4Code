_n = gets
answer = gets.split.map(&:to_i).each_cons(3).inject(0) do |count, p|
  p[1] == p.sort[1] ? count + 1 : count
end

puts answer