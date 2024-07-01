N,K=gets.split.map(&:to_i)
vs=gets.split.map(&:to_i)
ans = 0
if vs.all?{|e|e<=0}
    puts 0
    exit
end
0.upto([N,K].min) do |left|
    0.upto([N-left,K-left].min) do |right|
        res = K - left - right
        restore = vs[0,left] + vs[N-1-right,right]
        restore.sort!
        positiveValue = 0
        positiveValue = restore.select{|e|e>=0}.inject(&:+) if restore.select{|e|e>=0}.size!=0
        negativeValue = 0
        negativeValue = restore.select{|e|e<0}[restore.select{|e|e<0}.size-res..-1].inject(&:+) if res<restore.select{|e|e<0}.size-1
        jd = positiveValue + negativeValue
        ans = ans < jd ? jd : ans
    end
end
puts ans

