as=(65..90).to_a.map{|e|e.chr}
N=gets.to_i
s=gets.chomp.codepoints.map{|e|e.chr}
ans=Array.new{s.size}
(s.size).times do |i|
    idx=as.index(s[i])
    ans[i]=as[(idx+N)%26]
end
puts ans.join
