N,C = gets.split.map(&:to_i)
ch = Array.new(C){[]}
N.times do
  s,t,c = gets.split.map(&:to_i)
  ch[c-1] << [s,t]
end

merged_ch = Array.new(C){[]}
ch.each_with_index do |seq, i|
  m_seq = merged_ch[i]
  seq.each do |s, t|
    if m_seq.empty?
      m_seq << [s,t]
    elsif m_seq[-1][1] == s
      m_seq[-1][1] = t
    else
      m_seq << [s,t]
    end
  end
end

max = 2*10**5+10
imos = Array.new(max, 0)
merged_ch.each do |seq|
  seq.each do |s, t|
    imos[2*s-1] += 1
    imos[2*t] -= 1
  end
end

(max-1).times do |i|
  imos[i+1] += imos[i]
end
puts imos.max