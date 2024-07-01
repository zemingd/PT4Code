N=gets.strip.to_i

result = N
(1..Math.sqrt(N).ceil).to_a.each do |num|
  next if(N%num!=0)
  f_num = [(N/num).to_s.split('').size, num.to_s.split('').size].max
  result =[result, f_num].min
end

p result