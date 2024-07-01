lines = $stdin.read.lines.map(&:chomp)
N, M = lines.shift.split(/\s/).map(&:to_i)
cities = lines.map {|line| line.split(/\s/).map(&:to_i) }

pref_table = {}
lineno = 0
cities.each {|pref, year|
  pref_table[pref] = [] unless pref_table.key? pref
  pref_table[pref] << [lineno, year.to_i]
  lineno += 1
}

ret = []
pref_table.keys.each {|pref|
  pref_table[pref].sort! {|c0, c1| c0[1] <=> c1[1] }
  pref_table[pref].each.with_index {|c, i|
    ret << [c[0], "%06d%06d" % [pref, i + 1]]
  }
}

puts ret.sort {|c0, c1| c0[0] <=> c1[0] }.map {|c| c[1] }.join("\n")
