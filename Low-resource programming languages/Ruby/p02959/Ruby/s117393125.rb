N = gets.to_i                                                                   
A = gets.chomp!.split(" ").map(&:to_i)                                          
B = gets.chomp!.split(" ").map(&:to_i)                                          
                                                                                
bh = {}                                                                         
B.each_with_index { |b, i| bh[i] = b }                                          
bh = bh.sort_by { |k,v| -v }                                                    
                                                                                
                                                                                
result = 0                                                                      
bh.each do |k,v|                                                                
  if k == 0                                                                     
    t = A[k] > v ? v : A[k]                                                     
    v -= t                                                                      
    tt = A[k + 1] > v ? v : A[k + 1]                                            
    A[k+1] -= tt                                                                
    r = t + tt                                                                  
    result += r                                                                 
  elsif k == N - 1                                                              
    t = A[k + 1] > v ? v : A[k + 1]                                             
    v -= t                                                                      
    tt = A[k] > v ? v : A[k]                                                    
    A[k] -= tt                                                                  
    r = t + tt                                                                  
    result += r                                                                 
  else                                                                          
    r =                                                                         
      if A[k] < A[k + 1]                                                        
        t =A[k] > v ? v : A[k]                                                  
        v -= t                                                                  
        A[k] -= t                                                               
        tt = A[k + 1] > v ? v : A[k + 1]                                        
        A[k+1] -= tt                                                            
        t + tt                                                                  
      else                                                                      
        t = A[k + 1] > v ? v : A[k + 1]                                         
        v -= t                                                                  
        A[k + 1] -= t                                                           
        tt = A[k] > v ? v : A[k]                                                
        A[k] -= tt                                                              
        t + tt                                                                  
      end                                                                       
    result += r                                                                 
  end                                                                           
end                                                                             
                                                                                
puts result         