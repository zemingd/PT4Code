n=gets.chomp.split("").map(&:to_s)
max=0

for i in 0..n.length-1
    for j in 0..n.length-1
        v=n[i..j]
        count=0
        (v.length).times.each do
            #p v
            vv=v.pop
         
            if vv=="G" || vv=="A" || vv=="C" || vv=="T"
                count+=1
            else
            count=0
              break
            end
           
         end
        #p count
        max=[max,count].max
    end
end
p max