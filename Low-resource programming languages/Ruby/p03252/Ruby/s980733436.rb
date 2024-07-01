S = gets.chomp
T = gets.chomp

# 対応表を作る
l = {}

can_match = true
S.length.times do |i|
  if l[S[i]].nil? # 対応表がない
    l[S[i]] = T[i] # ci -> cj の変換表を作る
  elsif l[S[i]] != T[i] # 別の変換先への対応が既にある
    can_match = false # 変換不可
    break
  end
end

# 対応表の値が重複 == 複数の変換先が存在する
can_match = false if l.values.size != l.values.uniq.size

if can_match
  puts 'Yes'
else
  puts 'No'
end