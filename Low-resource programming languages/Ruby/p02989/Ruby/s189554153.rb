N = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i).sort

an_ans = problems[N/2]
left = problems[N/2 -1]
if left == an_ans
  puts 0
else
  puts((left...an_ans).count)
end
