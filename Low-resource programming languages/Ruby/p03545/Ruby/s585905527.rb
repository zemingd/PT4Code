def calc(a, b)
  result = []
  result[0] = a + b
  result[1] = a - b
  result
end

a,b,c,d = gets.split("").map(&:to_i)

res1 = []
res2 = []
res3 = []

res1 = calc(a, b)
res2 = calc(c, d)

0.upto 1 do |i|
  0.upto 1 do |j|
    op1 = i==0 ? '+' : '-'
    op3 = j==0 ? '+' : '-'
    res3 = calc(res1[i], res2[j])
    if( res3[0] == 7 )
      op2 = '+'
      puts  "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
      exit
    elsif( res3[1] == 7 )
      op2 = '-'
      puts  "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
      exit
    end
  end
end