n,k=gets.chomp.split(' ').map(&:to_i)
coin_percentage = 0.5
ans_ary = []
if n<=k
  n.times do |i|
    temp_percentage = 1/n.to_f
    temp_score = i+1
    while true
      if temp_score<k
        temp_score *=2
        temp_percentage *=coin_percentage
      else
        break
      end
    end
    ans_ary << temp_percentage
  end
else
  k.times do |i|
    temp_percentage = 1/n.to_f
    temp_score = i+1
    while true
        if temp_score<k
            temp_score *= 2
            temp_percentage *= coin_percentage
        else
            break
        end
    end
    ans_ary << temp_percentage
  end
  ans_ary << (n-k)/n.to_f
end
puts ans_ary.inject(0){|sum,num|sum+num}