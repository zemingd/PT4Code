while gets.to_i != 0 do
  puts $_.chars.map(&:to_i).inject(:+)
end
