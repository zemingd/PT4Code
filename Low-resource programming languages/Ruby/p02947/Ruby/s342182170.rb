N = gets.to_i
counter = Hash.new(0)
ans = 0
N.times.map {
  s = gets.chomp.chars.sort.join
  ans += counter[s] if counter[s] >= 1
  counter[s] += 1
}
puts ans