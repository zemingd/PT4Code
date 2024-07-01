s = gets.chomp("").to_i

ans = 0
t = s.to_s
keta = s.to_s.length

keta.times do |i|
  case i
  when 9
    ans += 499999999500000000 * t[i].to_i * t[i].to_i
  when 8
    ans += 4999999950000000 * t[i].to_i * t[i].to_i
  when 7
    ans += 49999995000000 * t[i].to_i * t[i].to_i
  when 6
    ans += 499999500000 * t[i].to_i * t[i].to_i
  when 5
    ans += 4999950000 * t[i].to_i * t[i].to_i
  when 4
    ans += 49995000 * t[i].to_i * t[i].to_i
  when 3
    ans += 499500 * t[i].to_i * t[i].to_i
  when 2
    ans += 4950 * t[i].to_i * t[i].to_i
  when 1
    ans += 45 * t[i].to_i * t[i].to_i
  when 0
    w = 0
    s.times do |i|
      w += i
    end
    ans += w
  end
end

puts ans
