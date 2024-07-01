a,b,c,x = Array.new(4){ gets.to_i }

def coin(x, n); 0.step(n*x, x); end

ans = 0
coin(500, a).each do |s|
  coin(100, b).each do |t|
    coin(50, c).each do |u|
      ans += 1 if s + t + u == x
    end
  end
end

puts ans