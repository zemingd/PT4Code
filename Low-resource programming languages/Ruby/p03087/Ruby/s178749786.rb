strmg_len, question_num = STDIN.gets.split.map(&:to_i)
question_str = STDIN.gets.chomp

(question_str.size - 1).times do |i|
  question_str[i] = "\t" if question_str.slice(i, 2) == 'AC'
end

question_num.times do |_|
  l, r = STDIN.gets.split.map(&:to_i)
  STDOUT.puts question_str.slice(l-1, r-l).count("\t")
end