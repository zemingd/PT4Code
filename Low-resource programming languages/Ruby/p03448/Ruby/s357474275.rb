a, b, c, x = Array.new(4) { |i| gets.to_i }

ans = 0

a.downto(0) do |c500|
  b.downto(0) do |c100|
    c.downto(0) do |c50|
      ans += 1 if 500*c500 + 100*c100 + 50*c50 == x
    end
  end
end

puts ans