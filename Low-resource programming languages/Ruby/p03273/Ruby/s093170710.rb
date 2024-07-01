def output_2d_array(array, separater="")
  array.each do |line|
    puts line.join(separater)
  end
end

def horizontal_compress(array)
  new_array = []
  array.each do |line|
    if line.count("#") >= 1 # #が一つでもある
      new_array << line
    end
  end
  return new_array
end

def vertical_compress(array)
  temp_array = array.transpose
  new_array = []
  temp_array.each do |line|
    if line.count("#") >= 1 # #が一つでもある
      new_array << line
    end
  end
  return new_array.transpose
end

field = []
H, _W = gets.split.map(&:to_i)
H.times do
  field << gets.split("")
end

field = horizontal_compress(field)
field = vertical_compress(field)
output_2d_array(field, "")
