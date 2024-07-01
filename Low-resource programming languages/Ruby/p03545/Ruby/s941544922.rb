def solution
  a, b, c, d = gets.chomp.split('').map(&:to_i)
  operator = { '+' => 1, '-' => -1 }
  %w[+ -].repeated_permutation(3).each do |p|
    return "#{a}#{p[0]}#{b}#{p[1]}#{c}#{p[2]}#{d}=7" if a + operator[p[0]]*b + operator[p[1]]*c + operator[p[2]]*d == 7
  end
end

puts solution
