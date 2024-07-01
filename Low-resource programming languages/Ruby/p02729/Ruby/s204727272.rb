gu,ki = gets.split.map(&:to_i)

if ki < 1 then
     p gu*(gu-1)/2
elsif gu < 1 then
    p ki*(ki-1)/2
else
    p ki*(ki-1)/2 + gu*(gu-1)/2
end