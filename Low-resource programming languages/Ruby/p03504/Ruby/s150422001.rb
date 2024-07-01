N,C = gets.split.map(&:to_i)
stc = []
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

all_programs = []
merged_ch.each do |seq|
  seq.each do |s, t|
    all_programs << [s - 1, t]
  end
end
all_programs.sort_by!{|seq| seq[0]}
max = 10**5+10
a = Array.new(max, 0)
imos = Array.new(max, 0)
all_programs.each do |seq|
  a[seq[0]] += 1
  a[seq[1]] -= 1
end
imos[0] = a[0]
(1...max).each do |i|
  imos[i] = imos[i-1] + a[i]
end
ans = 0
imos.each do |e|
  ans = [ans, e].max
end

puts ans