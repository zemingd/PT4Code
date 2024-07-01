s = gets.rstrip
q = gets.rstrip.to_i

queries = []
q.times do |i|
    query = gets.rstrip
    if query.length > 1 then
        queries << query.split(" ")
    else
        queries << query
    end
end

s = [s]
  
isReversed = false
queries.each do |qi|

    if qi == "1" then
        isReversed = isReversed ^ true
    else
        temp, f, c = qi
        if f == "1" then
            if not isReversed then
                #s = c + s
                s.unshift(c)
            else
                #s = s + c
                s.push(c)
            end
        else
            if not isReversed then
                #s = s + c
                s.push(c)
            else
                #s = c + s
                s.unshift(c)
            end
        end
    end
end

if isReversed then
    puts s.join.reverse
else
    puts s.join
end
