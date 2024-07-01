answer_ary = []

while line = gets
  answer_ary << line.chomp.split.map(&:to_i).inject(&:+).to_s.length
end

puts answer_ary