n, m = gets.chomp.split(' ').map{|i| i.to_i }
success = 0

k = []
s = []
bulbs_of_switches = {}
m.times{|i|
  ks = gets.chomp.split(' ')
  k[i] = ks.shift.to_i
  s[i] = ks.map{|s1|
    s2 = s1.to_i - 1
    bulbs_of_switches[s2] = [] if bulbs_of_switches[s2].nil?
    bulbs_of_switches[s2].push(i)
    #p bulbs_of_switches
    s2
  }
}

p = gets.chomp.split(' ').map{|i| i.to_i }

(2 ** n).times{|bit|
  s1 = "#{"0" * n}#{bit.to_s(2)}".slice(-n, 2 * n).split('').map{|i| i.to_i }

  ons_of_bulbs = []
  n.times{|i|
    #p i
    #p bulbs_of_switches
    next if bulbs_of_switches[i].nil?
    bulbs_of_switches[i].each{|bulb|
      ons_of_bulbs[bulb] = 0 if ons_of_bulbs[bulb].nil?
      ons_of_bulbs[bulb] += s1[i]
    }
  }
  failed = false
  #p ons_of_bulbs
  m.times{|i|
    tmp = ['ons', p[i], ons_of_bulbs[i]]
    #p tmp
    if ons_of_bulbs[i] % 2 != p[i] then
      failed = true
      break
    end
  }
  success += 1 if !failed
}
puts success
