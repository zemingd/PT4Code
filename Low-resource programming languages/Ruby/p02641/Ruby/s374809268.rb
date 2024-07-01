INPUT_LINE = gets.chomp!.split(" ").map! { |i| i.to_i }
X = INPUT_LINE[0]
N = INPUT_LINE[1]
INPUT_LINE2 = gets.chomp!.split(" ").map! { |i| i.to_i } unless N == 0
if N == 0
  puts X
  exit
end
tmp = 0
loop do
  if not INPUT_LINE2.include?(X - tmp)
    puts X - tmp
    break
  end
  if not INPUT_LINE2.include?(X + tmp)
    puts X + tmp
    break
  end
  tmp += 1
end
