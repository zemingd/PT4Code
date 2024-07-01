s = gets.chomp
a = s.slice(0, 2).to_i
b = s.slice(2, 2).to_i
judge_a = (a >= 1 && a <= 12)
judge_b = (b >= 1 && b <= 12)
if judge_a && judge_b
  puts "AMBIGUOUS"
elsif !judge_a && !judge_b
  puts "NA"
elsif judge_a
  puts "MMYY"
else
  puts "YYMM"
end
