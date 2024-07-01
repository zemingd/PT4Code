Program = Struct.new(:s, :t, :c)

N, C = gets.split.map(&:to_i)
programs = Array.new(N) do
  s, t, c = gets.split.map(&:to_i)
  Program.new(s, t, c)
end
programs.sort_by!{|x| [x.c, x.s, x.t]}

loop do
  exist = false
  programs.each_cons(2).with_index do |(p1, p2), i|
    if p1.c == p2.c and p1.t == p2.s
      programs[i] = Program.new(p1.s, p2.t, p1.c)
      programs.delete_at(i+1)
      exist = true
      break
    end
  end
  break unless exist
end

memos = Array.new(10**5+2, 0)
programs.each do |program|
  memos[program.s] += 1
  memos[program.t+1] -= 1
end

(1..10**5+1).each do |i|
  memos[i] += memos[i-1]
end

puts memos.max
