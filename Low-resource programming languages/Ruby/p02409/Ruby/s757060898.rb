_n = gets
BUILDINGS = 4
FLOORS    = 3
ROOMS     = 10
SEPARATOR = "#" * 20

values = readlines.each_with_object({}) do |line, hash|
  building, floor, room, value = line.split.map(&:to_i)

  hash[building] ||= {}
  hash[building][floor] ||= {}
  hash[building][floor][room] ||= 0
  hash[building][floor][room] += value
end


puts (1..BUILDINGS).map { |building|
  (1..FLOORS).map { |floor|
    (1..ROOMS).map { |room|
      values[building] && values[building][floor] && values[building][floor][room] || 0
    }.join(' ')
  }.join("\n")
}.join("\n#{SEPARATOR}\n")