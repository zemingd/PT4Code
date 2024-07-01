n = gets.chomp.to_i
s = gets.chomp.to_s
ans = []

ans << s.slice(1..n-1).count("E")

if n > 2 then
    1.upto(n-2) do |i|
        left = s.slice(0...i).count("W")
        right = s.slice((i+1)...n).count("E")
        ans << left+right
    end
end

ans << s.slice(0..n-2).count("W")

print ans.min