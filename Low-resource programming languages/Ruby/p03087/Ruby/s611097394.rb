line = gets.split(' ').map(&:to_i)
n = line[0]
q = line[1]

nline = gets.split('')
jline = []
jline[0] = 0
qline = Array.new(q)
for i in 1..n-1 do
  if nline[i] == "C" && nline[i-1] == "A"
    jline[i] = jline[i-1] + 1
  else
    jline[i] = jline[i-1]
  end
end
qline[-1] = 0
q.times do |i|
  line2 = gets.split(' ').map(&:to_i)
  l = line2[0]
  r = line2[1]
  qline[i] = jline[r-1] - jline[l-1]
end
puts qline
