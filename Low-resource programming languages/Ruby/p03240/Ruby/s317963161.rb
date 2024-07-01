N = gets.to_i

info = [*0...N].map{ gets.split.map(&:to_i) }

top = info.first
cdr = info.drop(1)

for y in 0..100 do
    for x in 0..100 do
        height = top[2] + (x - top[0]).abs + (y - top[1]).abs
        flg = true
        for p in cdr do
            if [height - (x - p[0]).abs - (y - p[1]).abs, 0].max != p[2] then
                flg = false
                break
            end
        end
        if flg then
            puts [x, y, height].map(&:to_s).join(" ")
            exit 0
        end
    end
end
