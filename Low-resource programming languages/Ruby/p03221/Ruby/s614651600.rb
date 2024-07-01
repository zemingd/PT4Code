N,M=gets.split.map(&:to_i)
pys=$<.read.split.map(&:to_i).each_slice(2).with_index.map do |py,i|
    p,y = py
    [p,y,i]
end

ss = []
n = 0
j = 0
pys.sort.each do |p,y,i|
    if n == p
        j += 1
    else
        j = 1
        n = p
    end
    ss << [i, "%06d%06d" % [p,j]]
end
ss.sort.each {|s| puts s[1]}

