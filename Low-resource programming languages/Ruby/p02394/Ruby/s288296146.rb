# W H x y r
def inBox?(w, h, x, y, r)

  top_p    = y + r
  bottom_p = y - r
  right_p  = x + r 
  left_p     = x - r

  if ( 0 <=  bottom_p ) && ( top_p <= h ) && ( 0 <= left_p ) && ( right_p <= w )
    return true
  end

  return false
end

w, h, x, y, r = gets.chomp.split.map(&:to_i)

if inBox?(w, h, x, y, r)
  puts "Yes"
else
  puts "No"
end
