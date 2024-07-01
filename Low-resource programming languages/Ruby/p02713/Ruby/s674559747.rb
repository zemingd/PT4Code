def gcd(a, b)
   if b == 0
      return a
   else
      return gcd(b, a%b);
    end 
end

x = Array.new(201) {Array.new(201)}
k = gets.to_i
sum = 0

1.upto(200) do |a|
    a.upto(200) do |b|
        x[a][b] = gcd(a,b)
        x[b][a] = gcd(a,b)
    end
end

1.upto(k) do |a|
    1.upto(k) do |b|
        1.upto(k) do |c|
            sum += gcd(x[a][b], x[b][c])
        end
    end
end

puts sum