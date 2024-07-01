N, Q = gets.split.map(&:to_i)
S = gets.chomp
lr = Q.times.map{|_| gets.split.map(&:to_i)}

cur = Hash.new()
m = Hash.new()
c = ""
S.chars.each.with_index(1) do |s, idx|
  p = 0
  if c == "A" && s == "C"
    p = 1
  end
  c = s
  idx.times do |i|
    i += 1
    if idx == i
      cur[i] = 0
      m[i] = {}
    else
      cur[i] += p
    end
    m[i][idx] = cur[i]
  end
end

lr.each do |l, r|
  p m[l][r]
end