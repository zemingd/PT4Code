n = gets.to_i
a = gets.split.map(&:to_i)

it = -1
a_st = a.map do |k|
  it += 1
  k - it
end

a_min = a_st.min
a_st = a_st.map do |k|
  k - a_min
end

a_st.sort

upper = 0
bottom = 0
sum = a_st.reduce {|sum, u| sum + u }

pre_acc = 0
acc = 0
ans = 0
(a_st.length).times do |i|
  acc += a_st[i]
  if acc > sum / 2
    # puts acc - (sum - acc)
    # puts (sum - pre_acc) - pre_acc
    if acc - (sum - acc) < (sum - pre_acc) - pre_acc
      ans = (acc - (sum - acc))*2
    else
      ans = ((sum - pre_acc) - pre_acc)*2
    end
    break 
  end
  pre_acc += a_st[i]
end

puts ans
