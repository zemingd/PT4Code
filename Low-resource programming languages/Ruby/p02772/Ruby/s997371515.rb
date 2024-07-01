n=gets
aNs = gets.split.map(&:to_i)
approve = true
aNs.each do |number|
  if number.even? && ( number % 3 != 0 && number % 5 != 0 )
    approve = false
    break
  end
end
puts approve ? :APPROVED : :DENIED