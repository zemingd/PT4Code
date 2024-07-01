n, m = gets.split.map(&:to_i)                                                                                                                                                                    
x = gets.split.map(&:to_i).sort                                                                                                                                                                  
                                                                                                                                                                                                 
if m <= n                                                                                                                                                                                        
  puts 0                                                                                                                                                                                         
  exit                                                                                                                                                                                           
end                                                                                                                                                                                              
                                                                                                                                                                                                 
ans = x[-1] - x[0]                                                                                                                                                                               
d = []                                                                                                                                                                                           
1.upto(m - 1) do |i|                                                                                                                                                                             
  d << x[i] - x[i - 1]                                                                                                                                                                           
end                                                                                                                                                                                              
d.sort!{ |a, b| b <=> a }                                                                                                                                                                        
(n - 1).times do |i|                                                                                                                                                                             
  ans -= d[i]                                                                                                                                                                                    
end                                                                                                                                                                                              
puts ans                                                                                                                                                                                         
