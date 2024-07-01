s = gets.chomp.split("").map(&:to_i)
ops = [0,1].repeated_permutation(3).to_a
ops.each do |o|
  sum = s[0]
  @ans = [s[0]]
  (0..2).each do |i|
    if o[i] == 0
      @ans << "-"
      @ans << s[i+1]
      sum -= s[i+1]
    else
      @ans << "+"
      @ans << s[i+1]
      sum += s[i+1]
    end
  end
  break if sum == 7
end
@ans << "=7"
puts @ans.join
