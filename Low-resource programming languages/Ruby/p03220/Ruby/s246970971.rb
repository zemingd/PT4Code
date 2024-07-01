n = gets.to_i

t,a = gets.split.map(&:to_i)

harray = gets.split.map(&:to_i)

min = 10**20
ans = -1
i = 0

n.times{
    
    key = (t-0.006*harray[i]-a).abs
    
    
    
    if key<min
    min = [min,key].min
    ans = i
    end
    i+=1
}



p ans+1