n=gets.to_i
a=gets.split.map(&:to_i)
b=[]

(a.length).times  do |i|
    v=a.shift
    if i%2!=0
        b.unshift(v)
    else
        b.push(v)
    end
        
   
    
    
end
puts  b.join(" ")