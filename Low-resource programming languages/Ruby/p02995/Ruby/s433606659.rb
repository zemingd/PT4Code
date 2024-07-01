a, b, c, d = gets.split.map(&:to_i)
cnt = [*a..b].select { |n| n % c != 0 && n % d != 0}
puts cnt.length