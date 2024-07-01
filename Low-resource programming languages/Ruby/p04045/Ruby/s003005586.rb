N, K = gets.split.map(&:to_i)
D_array = gets.split.map(&:to_i)
ans = 0
N.upto(10000) do |i|
  # next if D_array.any? { |d| i.to_s.chars.map(&:to_i).include?(d) }
  flag = true
  i.to_s.chars do |c|
    if D_array.include?(c.to_i)
      flag = false
      break
    end
  end

  ans = i
  break
end
puts ans