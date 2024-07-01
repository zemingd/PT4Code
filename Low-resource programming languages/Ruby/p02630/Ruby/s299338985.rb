  s = Array.new(100000,0)
#  p s

  N = gets.to_i
  a = gets.split.map(&:to_i)
  a.each do |ai|
    s[ai-1] += 1
  end

  Q = gets.to_i
  Q.times do
    b,c = gets.split.map(&:to_i)
    s[c-1] += s[b-1]
    s[b-1] = 0
    ans = 0
    100000.times do |i|
      ans += i*s[i-1]
    end
    puts ans
  end
