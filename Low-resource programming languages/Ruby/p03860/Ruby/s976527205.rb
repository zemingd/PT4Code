ary = gets.split.map(&:to_s)

answer = ary.map do |s|
  s.slice!(0)
end

puts answer.join