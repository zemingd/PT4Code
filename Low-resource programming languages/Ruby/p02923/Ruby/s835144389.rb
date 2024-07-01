n=gets.to_i
line=gets.chomp.split().map(&:to_i)
answer=0
kari=0
line.each_cons(2) do |a, b|
  if a >= b
    kari +=1
    answer=[answer,kari].max
  else  
    answer=[answer,kari].max
    kari=0
  end  
end
puts answer