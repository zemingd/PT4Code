    a, b, c, d = gets.chomp.split.map &:to_i
    ans = 0
    (0..1000).each do |dd|
      ans += 1 if (a <= dd and dd < b and c <= dd and dd < d)
    end
    p ans