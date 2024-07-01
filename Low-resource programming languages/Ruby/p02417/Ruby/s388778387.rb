#http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ITP1_8_C
text = ""
while line = gets
    text += line.chomp.downcase
end

res = {}
for c in 'a'..'z'
    res[c] = text.count(c)
end

res.each do |k,v|
    puts k + " : " + v.to_s
end