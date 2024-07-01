W, H, x, y = gets.chomp.split.map(&:to_i)
CENTER = {x: W/2.0, y: H/2.0}
A = {x: 0, y: 0}
B = {x: W, y: 0}
C = {x: W, y: H}
D = {x: 0, y: H}

max = (W * H)/2.0
co = {x: x, y: y}

def is_center? co
  co == CENTER
end

def is_on_edges? co
  co[:x] == CENTER[:x] || co[:x] == CENTER[:y]
end

def is_diagonal? co
  ((C[:x]-A[:x])/(co[:x]-A[:x]).to_f) == 
    ((C[:y]-A[:y])/(co[:y]-A[:y]).to_f) ||
  ((D[:x]-B[:x])/(co[:x]-B[:x]).to_f) == 
    ((D[:y]-B[:y])/(co[:y]-A[:y]).to_f)
end

def is_on_middle_lines? co
  co[:x] == W/2.0 || co[:y] == H/2.0
end

can_multiple_division = if is_center?(co)
  true
elsif is_on_edges?(co) || is_diagonal?(co) || is_on_middle_lines?(co)
  false
else
  true
end

puts "#{max} #{can_multiple_division ? 1 : 0}"