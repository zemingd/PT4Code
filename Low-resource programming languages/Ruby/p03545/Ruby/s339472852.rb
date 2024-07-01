s = gets.chomp.to_s.split(//)
ary = ["+", "-"].repeated_permutation(3).to_a
sum = 0

ary.each do |x|
  sum += s[0].to_i
  3.times do |i|
    if x[i] == "+"
      sum += s[i+1].to_i
    elsif x[i] == "-"
      sum -= s[i+1].to_i
    end
    puts sum
  end
  if sum == 7
    puts s[0] + x[0] + s[1] + x[1] + s[2] + x[2] + s[3] + "=" + "7"
    exit
  else
    sum = 0
  end
end
