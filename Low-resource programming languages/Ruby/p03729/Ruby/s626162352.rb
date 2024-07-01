  n, t_max = gets.chomp.split(" ").map(&:to_i)
  t = gets.chomp.split(" ").map(&:to_i)
  sum = 0
  (n-1).times do |i|
    if t_max > (t[i+1]-t[i])
      sum += (t[i+1]-t[i])
    elsif t_max <= (t[i+1]-t[i])
      sum += t_max
    end
  end
  sum += t_max
  puts sum