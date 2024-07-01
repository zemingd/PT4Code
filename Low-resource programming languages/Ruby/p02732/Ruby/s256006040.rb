n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

def comb(a,b)
  ((a-b+1)..a).inject(:*) / (1..b).inject(:*)
end

memo = {}
a.each do |num|
  memo[num] ? memo[num]+=1 : memo[num] = 1
end

answer_memo = {}
a.each do |num|
  if (answer_memo[num])
    puts answer_memo[num]
    next
  end
  memo[num] -= 1
  answer = 0
  memo.each do |k,v|
    answer += comb(v,2)
  end
  answer_memo[num] = answer
  puts answer
  memo[num] += 1
end
