n = gets.strip.to_i
s = gets.strip.split("")

n.times do 
  s.map{|i| i.succ!}
end

puts s.map{|i| i.slice(-1, 1)}.join


