"bit全探索の問題"

def calc(a, b)
  result = []
  result[0] = a + b
  result[1] = a - b
  result
end

a,b,c,d = gets.split("").map(&:to_i)
res = []

res1 = calc(a, b)
res2 = calc(res1[0], c)
res3 = calc(res1[1], c)

res4 = calc(res2[0], d)
res.push(res4).flatten!
res5 = calc(res2[1], d)
res.push(res5).flatten!
res6 = calc(res3[0], d)
res.push(res6).flatten!
res7 = calc(res3[1], d)
res.push(res7).flatten!

8.times do |i|
  if res[i] == 7 
    bit = i.to_s(2)
    bit = '0' + bit if bit.size == 2
    bit = '00' + bit if bit.size == 1
    op1 = (bit[0].to_i == 0) ? '+' : '-'
    op2 = (bit[1].to_i == 0) ? '+' : '-'
    op3 = (bit[2].to_i == 0) ? '+' : '-'
    puts "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
    exit
  end
end