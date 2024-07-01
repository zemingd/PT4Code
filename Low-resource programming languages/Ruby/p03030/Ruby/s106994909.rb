    n = gets.chomp.to_i#split(/\s/).map{|x| x.to_i}

    gb = Struct.new("Guide", :index, :city, :point)

    gbs = []
    for i in 1..n
        ci, po = gets.chomp.split(/\s/)#.map{|x| x.to_i}
        gbs.push(gb.new(i, ci, po.to_i))
    end

    gbs.sort{|a, b| (a.city <=> b.city).nonzero? || b.point <=> a.point}.each do |a|
        puts a.index
    end