N=gets.to_i

constraints=N.times.map{gets.split.map(&:to_i)}

(0..100).each do |cx|
    (0..100).each do |cy|
        estimate=-1
        ok=true
        constraints.each do |x,y,h|
            next if h==0
            temp=h+(x-cx).abs+(y-cy).abs
            ok=false if estimate!=temp && estimate!=-1
            estimate=temp
        end
        if ok
            puts "#{cx} #{cy} #{estimate}"
            exit
        end
    end
end