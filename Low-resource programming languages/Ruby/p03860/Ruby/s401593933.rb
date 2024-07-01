s = gets.chomp.split(' ').map{|e|e.to_i}
N = s[0]
x = s[1]

ary = gets.chomp.split(' ').map{|e|e.to_i}

count = 0
for i in 0..N-2
  sum = ary[i]+ary[i+1]
  if  sum > x
    if sum - x <= ary[i+1]
      ary[i+1] -= sum - x
      count += sum - x
    else
      count += sum - x
      ary[i] -= (sum - x) - ary[i+1]
      ary[i+1] = 0
      
    end
  end
end

puts count