X, K , D = gets.split.map(&:to_i)

a = X.abs / D
if K < a
    if X > 0
        puts (X - (D * K)).abs
    else
        puts (X + (D * K)).abs
    end
    exit
end

k = K - a
x = X > 0 ? X - (D * a) : X + (D * a)

if k % 2 == 0
    puts x.abs
else
    if x > 0
        puts (x - D).abs
    else
        puts (x + D).abs
    end
end