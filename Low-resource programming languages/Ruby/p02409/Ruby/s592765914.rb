BLOCK = 4
FLOOR = 3
ROOM = 10
SEP = "####################"
n = STDIN.gets.to_i

houses = Array.new(BLOCK) {|index|
        Array.new(FLOOR) {|index|
                Array.new(ROOM) {|index| 0}
        }
}

info = []
n.times { info.push(STDIN.gets.split(' ')) }
info.each {|vals|
        b = vals[0].to_i - 1
        f = vals[1].to_i - 1
        r = vals[2].to_i - 1
        v = vals[3].to_i
        houses[b][f][r] += v
}

houses.each {|block|
        block.each {|floor|
                puts floor.join(' ')
        }
        puts SEP
}