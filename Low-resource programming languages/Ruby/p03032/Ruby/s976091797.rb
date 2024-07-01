nn, kk = gets.split.map(&:to_i)
vv = gets.split.map(&:to_i)

max = 0
l_sum = 0
minus_left = []

# pop from left
0.upto([kk,nn].min) do |l|
  if l > 0
    minus_left << vv[l-1] if vv[l-1]<0
    l_sum += vv[l-1]
    #puts "l:#{l_sum}"
  end

  # pop from right
  r_sum = 0
  minus_right = []
  0.upto([kk,nn].min-l) do |r|
    if r > 0
      minus_right << vv[nn-r] if vv[nn-r]<0
      r_sum += vv[nn-r]
      #puts "r:#{r_sum}\n\n"
    end

    sorted = (minus_left + minus_right).sort
    pop_sum = 0
    push_cnt = kk-(l+r)
    #puts "pus_cunt:#{push_cnt}"
    if push_cnt==0
    elsif sorted.size < push_cnt
      pop_sum = sorted.inject(:+).to_i
    else
      pop_sum = sorted[0..push_cnt-1].inject(:+).to_i
    end

    sum = l_sum + r_sum - pop_sum
    max = sum if max < sum
    #puts "max:#{max}"
  end
end


puts max
