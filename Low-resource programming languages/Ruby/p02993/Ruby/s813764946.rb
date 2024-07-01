input = ARGV[1]
                               
i_1 = input.to_s[0]            
i_2 = input.to_s[1]
i_3 = input.to_s[2]            
i_4 = input.to_s[3]            

output = "Good"                
output = "Bad" if i_1 == i_2   
output = "Bad" if i_2 == i_3   
output = "Bad" if i_3 == i_4   

p output