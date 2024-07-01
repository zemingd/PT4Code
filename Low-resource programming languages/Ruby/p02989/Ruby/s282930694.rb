N=gets.chomp.to_i
D=gets.chomp.split.map(&:to_i)
m1=0
m2=-1
N.times do |i|
  if D.select { |n| n < D[i] }.size == N/2 then
    m2=D[i]
    break
  end
end

N.times do |j|
  if m2>D[j] && m1<D[j] then
    m1=D[j]
  end
end

if m2==-1 then
  puts 0
else
  puts (m2-m1)
end