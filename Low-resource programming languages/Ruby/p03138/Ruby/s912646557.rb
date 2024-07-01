N, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)

def f(x)
  ans = 0
  AS.each do |a|
    ans += x^a   
  end
  ans
end

x = K/4 * 4
puts f(x)
