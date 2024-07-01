h, = gets.split.map(&:to_i)
h.times.map { gets.chomp.split('') }
 .select { |ah| ah.include?('#') }
 .transpose
 .select { |aw| aw.include?('#') }
 .transpose.map(&:join)
 .each { |ah| puts ah }
