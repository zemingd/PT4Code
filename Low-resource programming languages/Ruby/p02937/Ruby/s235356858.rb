S=gets.strip.codepoints
T=gets.strip.codepoints
ss=S.size
if !(T.uniq-S.uniq).empty?
    puts -1
    exit 0
end

data=Hash.new
S.each_with_index do |e,idx|
    if data[e].nil?
        data[e]=[idx]
    else
        data[e] << idx
    end
end

current=0
T.each_with_index do |e|
    points=data[e].bsearch{|j|current % ss <= j}
    # p points
    if points.nil?
        current += (ss-current % ss) + data[e][0]+1
    else
        current += points - (current % ss)+1
    end
end
puts current
