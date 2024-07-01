A, B, C = gets.split.map(&:to_i)

cnt = (B/A).floor
if cnt < C then
    puts cnt
else
    puts C
end
