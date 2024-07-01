lines = STDIN.read.strip.lines.map(&:strip)
arr = lines.last.split(' ').map(&:to_i)

curr = 1
cnt = 0
arr.size.times do |i|
    if arr[i] == curr
        curr += 1
    else
        arr[i] = 0
        cnt += 1
    end
end
arr = arr.reject(&:zero?)
if arr.size == arr.last
    puts cnt
else
    puts -1
end