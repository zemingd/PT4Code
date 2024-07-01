tenants = readlines.map(&:split)
  tenants.shift
  
  building = []
  4.times do
    flor = []
    3.times do
      flor << Array.new(10){0}
    end
    building << flor
  end

  for tenant in tenants
    building[((tenant[0].to_i)-1)][((tenant[1].to_i)-1)][((tenant[2].to_i)-1)] += tenant[3].to_i
  end

  building.each_with_index do |build,buildnum|
    for bud in build
      puts " " + bud.join(" ")
    end
    puts "####################" if buildnum < 3
  end
