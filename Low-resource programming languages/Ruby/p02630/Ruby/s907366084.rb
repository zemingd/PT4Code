def main
  n = gets.to_i
  as = gets.chomp.split(" ").map(&:to_i)
  t_1 = as.tally
  t_2 = as.tally
  q = gets.to_i
  sum = 0
  q.times do |i|
    b,c = gets.chomp.split(" ").map(&:to_i)
    unless t_2[b].nil?
      unless t_2[c].nil?
        t_2[c] += t_2[b]
      else
        t_2[c] = t_2[b]
      end
      t_2[b] = nil
    end

    if i == 0
      t_2.each_pair do |k, v|
        next if v.nil?
        sum += k*v
      end
    else
      t1_b = t_1[b] || 0
      t1_c = t_1[c] || 0
      t2_b = t_2[b] || 0
      t2_c = t_2[c] || 0
      sum = sum - b*t1_b - c*t1_c + b*t2_b + c*t2_c
    end
    puts sum
    t_1 = Marshal.load(Marshal.dump(t_2))
  end
end

main

