n = gets.to_i
arr = gets.chomp.split(' ').map{|num| num.to_i}
enter = 'APPROVED'
arr.each do |a|
  if a % 2 == 0
    unless a % 3 == 0 || a % 5 == 0
      enter = 'DENIED'
    end
  end
end
unless n.class == String
  p(enter)
end

