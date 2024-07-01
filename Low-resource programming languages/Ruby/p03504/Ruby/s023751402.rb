Program = Struct.new(:s, :t, :c)

N, C = gets.split.map(&:to_i)
programs = Array.new(N) do
  s, t, c = gets.split.map(&:to_i)
  Program.new(s, t, c)
end

memos = Array.new(10**5+2, 0)
programs.each do |program|
  memos[program.s-1] += 1
  memos[program.t+1] -= 1
end

(1..10**5+1).each do |i|
  memos[i] += memos[i-1]
end

puts memos.max
