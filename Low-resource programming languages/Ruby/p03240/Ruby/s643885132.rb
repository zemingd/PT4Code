N,*xyhs=$<.read.split.map(&:to_i)

0.upto(100) do |cx|
    0.upto(100) do |cy|
        x,y,h = xyhs[0..2]
        h1 = h+(x-cx).abs+(y-cy).abs
        b = xyhs.each_slice(3).all? do |x,y,h|
            h2 = h+(x-cx).abs+(y-cy).abs
            x <= 0 || h1 == h2
        end
        if b
            puts [cx,cy, h1].join(' ')
            exit
        end
    end
end


