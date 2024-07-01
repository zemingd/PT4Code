N,*xyhs=$<.read.split.map(&:to_i)

0.upto(100) do |cx|
    0.upto(100) do |cy|
        x,y,h = xyhs[0..2]
        ht = h+(x-cx).abs+(y-cy).abs
        b = xyhs.each_slice(3).all? do |x,y,h|
            x = h+(x-cx).abs+(y-cy).abs
            0 <= x && ht == x
        end
        if b
            puts [cx,cy, ht].join(' ')
            exit
        end
    end
end


