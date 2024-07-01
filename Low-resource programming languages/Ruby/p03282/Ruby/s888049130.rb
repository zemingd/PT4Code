gosen = 5 * 10**15

S = gets.chomp
K = gets.to_i
vec = S.chars.map do |c|
  c.to_i
end

now = 0
ans = 1

(0...K).each do |v|
  unless S[v].to_i == 1
    ans = S[v].to_i
    break
  end
end
p ans.to_i