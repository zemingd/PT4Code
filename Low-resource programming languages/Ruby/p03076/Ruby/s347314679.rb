a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

candidate = []
[a,b,c,d,e].permutation(5).to_a.each do | abcde |
  sum = 0
  abcde.each_with_index do | n, i |
    sum += n
    if i != 4 and sum%10 != 0
      sum = sum + (10-sum%10)
    end
  end
  candidate << sum
end

p candidate.min