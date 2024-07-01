N,*xyhs=$<.read.split.map(&:to_i)
xyhs = xyhs.each_slice(3).select {|x,y,h| h != 0 }.sort_by {|x,y,h| -h}

0.upto(100) do |cx|
    0.upto(100) do |cy|
        x,y,h = xyhs[0]
        h1 = h+(x-cx).abs+(y-cy).abs
        next if h1 == 0
        if xyhs.all? { |x,y,h| h1 == h+(x-cx).abs+(y-cy).abs }
            puts [cx,cy, h1].join(' ')
            exit
        end
    end
end


