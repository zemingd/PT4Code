S = gets.strip.chars
F = S.inject([]) do |a, c|
    if c == 'B'
      a.pop unless a.empty?
    else
      a << c
    end
    a
  end
    
puts F.join('')