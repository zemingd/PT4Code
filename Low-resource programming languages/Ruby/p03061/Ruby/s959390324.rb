def gcd(a, b)
    return a < 1 ? b : gcd(b % a, a)
end

N = gets.to_i
A = gets.split.map(&:to_i)

gr = A.clone
gl = A.clone
(1...N).each {|i|
  gl[i] = gcd(gl[i-1], gl[i])
  gr[N-1-i] = gcd(gr[N-1-i], gr[N-i])
  }
max = 0
(0...N).each {|i|
  tmp = 0
  if i==0
    tmp = gr[i+1]
  elsif i==N-1
    tmp = gl[i-1]
  else
    tmp = gcd(gl[i-1], gr[i+1])
  end
  max = tmp if max < tmp
  }
puts max
