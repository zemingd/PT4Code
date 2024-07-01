N = gets
T, A = gets.strip.split.map(&:to_i)
locations = gets.strip.split.map(&:to_i)
result, point = 0, 0

locations.each_with_index do |location, i|
  diff = ( T - location * 0.006 - A).abs
  result = diff if result == 0
  result, point = diff, i if diff <= result
end
puts point + 1