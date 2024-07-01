#from https://betrue12.hateblo.jp/entry/2018/10/06/224032

N = gets.to_i
xs, ys, hs = [], [], []
N.times do |i|
    xs[i], ys[i], hs[i] = gets.split.map(&:to_i)
end
 
(0..100).each do |x|
    (0..100).each do |y|
        h = nil
        hmax = 10**10
        success = true
        N.times do |i|
            dist = (xs[i]-x).abs + (ys[i]-y).abs
            if hs[i] == 0
                hmax = dist if hmax > dist
            else
                hc = hs[i] + dist
                if h && h != hc
                    success = false
                    break
                else
                    h = hc
                end
            end
        end
        if success && h <= hmax
            puts [x, y, h].join(' ')
            exit
        end
    end
end