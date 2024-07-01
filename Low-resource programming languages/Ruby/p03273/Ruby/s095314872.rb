$stdin.read.split(?\n).tap do |hw, *map|
  h, w = hw.split.map(&:to_i)

  map
    .map { |line| line.split // }
    .select { |line| line.include? "#" }
    .transpose
    .select { |line| line.include? "#" }
    .transpose
    .each do |line| puts line * "" end
end