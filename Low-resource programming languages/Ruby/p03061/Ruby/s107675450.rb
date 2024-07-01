require 'prime'



N = gets.to_i
As = gets.split.map(&:to_i)

ps_a = []


100000.times do |i|
  ps_a[i] = 0
end

As.each do |a|

  ps = Prime.prime_division(a)
  
  p ps

  ps.each do |b|
    
  
    ps_a[ b[0] ] += 1
  

    p b[0]

  end
  
end

sum = 1


ps_a.length.times do |i|
  next if (ps_a[i] < N - 1)
  
  sum *= ps_a[i]

end


puts sum