n_building = 4
n_floor = 3
n_room = 10
count = Array.new(n_building){Array.new(n_floor){Array.new(n_room, 0)}}

n = gets.chomp.to_i
n.times{
    b, f, r, v = gets.chomp.split.map(&:to_i)
    count[b - 1][f - 1][r - 1] += v
}

n_building.times{|b|
    n_floor.times{|f|
        n_room.times{|r|
            print " #{count[b][f][r]}"
        }
        puts
    }
    puts "#" * 20 unless b == n_building - 1
}