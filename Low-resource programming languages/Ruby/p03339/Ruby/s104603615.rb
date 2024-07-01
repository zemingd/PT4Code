N = gets.to_i
S = gets.chomp

a = Array.new(N)
b = Array.new(N)
N.times do |i|
  if i==0
    if S[0] == "E"
      a[0] = 1
    else
      a[0] = 0
    end
  else
    if S[i] == "E"
      a[i] = a[i-1] + 1
    else
      a[i] = a[i-1]
    end
  end
end

N.times do |i|
  b[i] = a[N-1]-a[0] if i==0
  b[i] = (i-a[i-1]) + (a[N-1]-a[i]) if i>0
end

p b.min