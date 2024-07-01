N = gets.chomp.to_i
n = 0
x=1
y=1
z=1
count=0
N.times do |num|
    count=0
    x=1
    loop do
        y = 1
        loop do
            z = 1
            loop do
                n = x**2+y**2+z**2+x*y+y*z+z*x
    
        
                if n==num+1 then
                    count+=1
                end

                if z>num+1 then
                    break
                end

               if n>num+1 then
                break
               end
                z+=1
            end
            
            y+=1
            if y>num+1 then
                break
            end
        end
        x+=1
        if x>num+1 then
            break
       end
    end
    
    puts count
  
    
end
