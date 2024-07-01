n = gets.to_i
w = gets.split(" ").map(&:to_i)

i = 0
j = w.length - 1
s1 = w[i]
s2 = w[j]

while (j - i) != 1 do
    case s1 <=> s2
    when 1 then
        j = j - 1
        s2 = s2 + w[j]
    when 0 then 
        j = j - 1
        s2 = s2 + w[j]
    when -1 then
        i = i + 1
        s1 = s1 + w[i]
    end
end
puts (s1-s2).abs


    