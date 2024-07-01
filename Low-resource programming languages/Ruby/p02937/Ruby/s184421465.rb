S=gets.strip.codepoints
T=gets.strip.codepoints
judge=true
ss=S.size
ts=T.size

if !(T.uniq - S.uniq).empty?
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

# puts data


current=0
T.each_with_index do |e|
    points=data[e].bsearch{|j|current % ss < j}
    # p points
    if points.nil?
        current += (ss-current % ss) + data[e][0]
    else
        current += points - (current % ss)
    end
    # puts current
end
puts current+1
