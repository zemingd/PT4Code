def r;gets.split.map &:to_i;end
def rr(n);n.times.map{gets.chomp.chars.sort.join};end
N = gets.to_i
S = rr(N)
S.sort!

key = nil
ans = 0
count = 1
S.each do |s|
  if s == key
    count += 1
  else
    ans += count * (count + 1) / 2
    count = 0
    key = s
  end
end

puts ans