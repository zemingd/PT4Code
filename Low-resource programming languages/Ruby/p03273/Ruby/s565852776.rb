$stdin.read.split(?\n).tap do |_, *map|
  map
    .map { |line| line.split // }
    .select { |line| line.include? "#" }
    .transpose
    .select { |line| line.include? "#" }
    .transpose
    .each do |line| puts line * "" end
end