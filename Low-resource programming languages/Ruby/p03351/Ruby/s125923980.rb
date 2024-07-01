a,b,c,d = gets.split.map(&:to_i)
puts (c-a).abs <= d || [(b-a).abs,(c-b).abs].max <= d ? "Yes" : "No"