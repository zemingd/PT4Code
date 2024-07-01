n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)
asas = as.dup
 
(0..(n - 1)).to_a.each do |i|
  ((i + 1)..(n - 1)).to_a.each do |j|
    if as[i] % as[j] == 0
      asas.delete(as[i])
    elsif as[j] % as[i] == 0
      asas.delete(as[j])
    end
  end
end


puts asas.length