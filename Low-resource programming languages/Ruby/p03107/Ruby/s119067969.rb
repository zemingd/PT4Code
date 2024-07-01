cubes = gets.chomp.gsub('11', '00')
answer = 0
has_head = cubes[0] == '1'
has_tail = cubes[-1] == '1'
take_head = false

cubes.split('1').map{|s| s.size}.filter{|len| len > 0}.each{|len|
    answer += len
    take_head = false
    if len % 2 == 0
        if has_head
            take_head = true
        end
    else
        answer -= 1
    end

    if take_head
        answer += 2
    else
        has_head = true
    end
}

answer -= 2 if take_head && !has_tail
puts answer
