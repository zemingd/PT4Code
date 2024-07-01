N = gets.to_i
A = Array.new(N) { Array.new(gets.to_i) { gets.split.map(&:to_i) } }

def check(liar)
  person = [1] * N; liar.each {|i| person[i] = 0 }
  N.times do |i|
    cond = person[i]
    A[i].each do |j,a|
      next if person[i] == 0
      return false if person[j-1] != a
    end
  end
  return true
end

ans = 0
N.times do |i|
  N.times.to_a.combination(i).each do |liar|
    if check(liar)
      ans = N - i
      break
    end
  end
  break if ans != 0
end
puts ans
