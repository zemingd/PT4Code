def balls(ball_a, ball_b, a, b, u)
  if ball_a == u
    a = a - 1
  elsif ball_b == u
    b = b - 1
  end
  puts "#{a} #{b}"
end

ball_a, ball_b = gets.chomp.split(" ")
a, b = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp
balls(ball_a, ball_b, a, b, u)