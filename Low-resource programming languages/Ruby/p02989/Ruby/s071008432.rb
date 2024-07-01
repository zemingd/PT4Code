N = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i).sort

an_ans = problems[N/2]
if problems[N/2 - 1] == an_ans
  puts 0
else
  uniq_problems = problems.uniq
  puts((uniq_problems[uniq_problems.find_index(an_ans) - 1]...an_ans).count)
end
