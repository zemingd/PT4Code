N = gets.to_i
as = []
(1..N).each do |i|
    as[i] = gets.to_i
end

visited = {}
visited[1] = true
i = 1
push = 0
loop do
    i = as[i]
    push += 1
    if i == 2
        puts push
        exit
    elsif visited[i]
        puts -1
        exit
    end
    visited[i] = true
end