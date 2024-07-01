w,h,n = gets.split.map &:to_i
tile = Array.new(h) { Array.new(w, 0) }
n.times{
    x,y,a = gets.split.map &:to_i
    left = 0; right = w
    top = 0; bottom = h
    if a == 1 then
        right = x
    elsif a == 2 then
        left = x
    elsif a == 3 then
        bottom = y
    else
        top = y
    end

    for i in Range.new(top, bottom-1) do
        for j in Range.new(left, right-1) do
            tile[i][j] = 1
        end
    end
}
count = 0

for i in Range.new(0, h-1) do
    for j in Range.new(0, w-1) do
        if tile[i][j] == 0 then
            count += 1
        end
    end
end

p count
