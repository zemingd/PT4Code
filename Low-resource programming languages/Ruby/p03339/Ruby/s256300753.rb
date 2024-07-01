N = gets.to_i
S = gets.chomp

n = maxn = 0
maxi = -1
S.chars.each.with_index do |c, i|
  n += (c == "E" ? 1 : -1)
  if n > maxn
    maxn = n
    maxi = i
  end
end

s1 = (maxi <= 0 ? "" : S[0, maxi])
s2 = S[(maxi+1)..-1]
d1 = s1.gsub("E", "").length
d2 = s2.gsub("W", "").length
p d1 + d2