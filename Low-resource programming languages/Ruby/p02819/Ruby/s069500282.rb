N=gets.to_i
(N).upto(100003) do |i|
  ri=i**(1/2.0)
  flag=true
  2.upto(ri) do |j|
    flag=false if i%j==0
  end
  if flag
    puts i
    exit
  end
end

