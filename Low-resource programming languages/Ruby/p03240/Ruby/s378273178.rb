
N=gets.to_i

constraints=N.times.map{gets.split.map(&:to_i)}

(0..100).each do |cx|
    (0..100).each do |cy|
        estimate=nil
        constraints.each do |x,y,h|
            if h!=0
                estimate=h+(x-cx).abs+(y-cy).abs
                break
            end
        end
        ok=true
        constraints.each do |x,y,h|
            temp=h+(x-cx).abs+(y-cy).abs
            ok=false if estimate!=temp
            estimate=temp
        end
        if ok
            puts "#{cx} #{cy} #{estimate}"
            exit
        end
    end
end