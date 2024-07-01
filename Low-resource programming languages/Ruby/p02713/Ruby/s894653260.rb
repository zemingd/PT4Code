k = gets.to_i
result = 0
MEMO = {}
1.upto(k) do |i|
  MEMO[i] ||= {}
  MEMO[i][i] = i
  (i+1).upto(k) do |j|
    MEMO[i][j] = i.gcd(j)
  end
end

def gcd a,b,c  
  ab = MEMO[a][b] || MEMO[b][a]
  return 1 if ab == 1
  return MEMO[ab][c] || MEMO[c][ab]
end
result += 1 + (k - 1) * (k-1) * 3 +  (k-1) * 3
list = (2..k).to_a
list.each do |a|
  list.each do |b|
    ab = a.gcd(b)
    if ab == 1
      result += k - 1
    else
      list.each do |c|
        result += ab.gcd(c)
      end
    end
  end
end
puts result