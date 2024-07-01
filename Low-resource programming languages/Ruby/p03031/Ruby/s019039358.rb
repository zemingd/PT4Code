n, m = gets.split.map(&:to_i)

ss = m.times.with_object([]) do |_, arr|
  _, *s = gets.split.map(&:to_i)
  arr.push(s)
end
ps = gets.split.map(&:to_i)

ans = 0

(1 << n).times do |bit|
  valid = true

  m.times do |i|
    count = ss[i].count { |s| bit[s - 1] == 1 }

    if count % 2 != ps[i]
      valid = false
      break
    end
  end

  ans += 1 if valid
end

puts ans
