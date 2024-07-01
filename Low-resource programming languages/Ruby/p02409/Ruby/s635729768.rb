  building = Array.new(4){ Array.new(3){ Array.new(10){0} } }
  tenants = gets.chomp.to_i

  tenants.times do
    b,f,r,v = gets.split.map(&:to_i)
    building[(b-1)][(f-1)][(r-1)] += v
  end

  building.each_with_index do |build,buildnum|
    for bud in build
      puts " " + bud.join(" ")
    end
    puts "#" * 20 if buildnum < 3
  end
