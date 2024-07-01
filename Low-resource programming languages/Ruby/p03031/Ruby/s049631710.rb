
n, m = gets.split.map(&:to_i)

ks = []
ss = Array.new(m) { [] }

m.times do |i|
  _, *s = gets.split.map(&:to_i)
  ss[i] = s
end
ps = gets.split.map(&:to_i)

ans = 0

0.upto(2**n) do |bit|
  valid = true

  m.times do |i|
    count = ss[i].select { |s| bit[s - 1] == 1 }.count

    if count % 2 != ps[i]
      valid = false
      break
    end
  end

  ans += 1 if valid
end

puts ans
