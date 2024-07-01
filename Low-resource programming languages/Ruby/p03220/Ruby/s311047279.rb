N = gets
T, A = gets.strip.split.map(&:to_i)
locations = gets.strip.split.map(&:to_i)
result, point = 10 ** 10, 0

locations.each_with_index do |location, i|
  diff = ( T - location * 0.006 - A ).abs
  if diff < result
    result = diff
    point = i 
  end
end
puts point + 1