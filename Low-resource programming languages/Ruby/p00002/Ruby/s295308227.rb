num = gets
arrow = num.split

def count_dsgits num
  num.to_s.length
end
sun = arrow[0].to_i+arrow[1].to_i
puts count_dsgits sun

