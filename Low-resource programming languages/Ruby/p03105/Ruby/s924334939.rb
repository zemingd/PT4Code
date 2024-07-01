A, B, C = gets.split.map(&:to_i)

cnt = (A/B).floor
if cnt < C then
    puts cnt
else
    puts C
end
