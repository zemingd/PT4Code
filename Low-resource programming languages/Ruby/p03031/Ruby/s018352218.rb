n,m=gets.split.map(&:to_i)
lights=[]

m.times.each do
    light,*v=gets.split.map(&:to_i)
    lights<<v
end


conditions=gets.split.map(&:to_i)
count=0

for i in 0..(2**m)-1
    
    flag=Array.new(n,0)
    v=0
    
    for j in 0..lights.length-1
        switch_count=0
        #接続中のスイッチの集合の確認
        for k in 0..lights[j].length-1
            if i&(1<<lights[j][k])
                switch_count+=1
            end
        end
        #条件との照らし合わせ
　　　　　if conditions[j]==switch_count%2
          v+=1
        else
         break
        end
    
    end


if v==n
count+=1
end

end

puts count