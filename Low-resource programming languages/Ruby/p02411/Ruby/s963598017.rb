loop {
  m, f, r = gets.chomp.split(' ').map { |i| i.to_i }
  if m == -1 and f == -1 and r == -1 then break
  else
    if    m == -1 or f == -1 then puts 'F'
    elsif m+f >= 80 then puts 'A'
    elsif m+f >= 65 then puts 'B'
    elsif m+f >= 50 then puts 'C'
    elsif m+f >= 30 and r >= 50 then puts 'C'
    elsif m+f >= 30 and r < 50 then puts 'D'
    else puts 'F'
    end
  end
}