require 'bigdecimal'                                                            
                                                                                
def how_many_times(i, k)                                                        
  result = 0                                                                    
  i2 = i                                                                        
  while i2 <= k do                                                              
    result += 1                                                                 
    i2 *= 2                                                                     
  end                                                                           
  result                                                                        
end                                                                             
                                                                                
FAKE = '100_000_000_000'                                                        
                                                                                
A = gets.split.map(&:to_i)                                                      
N = A[0]                                                                        
K = A[1]                                                                        
                                                                                
total_pred = BigDecimal('0.0')                                                  
if N < K                                                                        
  (1..N).each do |i|                                                            
    h = how_many_times(i, K)                                                    
    total_pred += BigDecimal("#{0.5**h}") * BigDecimal(FAKE) / BigDecimal("#{N}")
  end                                                                           
else                                                                            
  (1...K).each do |i|                                                           
    h = how_many_times(i, K)                                                    
    add = BigDecimal("#{0.5**h}") * BigDecimal(FAKE) / BigDecimal("#{N}")       
    total_pred += add                                                           
  end                                                                           
                                                                                
  add = BigDecimal(FAKE) * BigDecimal("#{(N - K + 1)}") / BigDecimal("#{N}")    
  total_pred += add                                                             
end                                                                             
                                                                                
puts (total_pred / BigDecimal(FAKE)).to_s('F')  