N = gets.chomp.to_i
S = gets.chomp

w = 0
b = 0
bstart = -1
bend = -1

for x in 0...N
  if S[x] == "."
    w += 1
    bend = -1
  else
    bstart == -1 ? bstart : x
    bend == -1 ? bend : x
    b += 1
  end
end

if bend == -1
  bend = N
end

if w == 0 || b == 0
  puts 0
  exit
end

w2 = w - bstart
#b2 = b - (N-bend)
#answer = [w2,b2].min
answer = w2
a = w2

for x in bstart...bend
  if S[x] = "#"
    a += 1
  else
    a -= 1
    answer < a ? answer : a
  end
end

puts answer