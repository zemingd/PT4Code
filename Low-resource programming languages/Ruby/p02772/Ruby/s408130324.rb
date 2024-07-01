# https://atcoder.jp/contests/abc155/tasks/abc155_b



N = gets.to_i
As = gets.split.map(&:to_i)

As.each do |a|
  if a.even? && a % 3 != 0 && a % 5 != 0
    puts 'DENIED'
    exit
  end
end
puts 'APPROVED'
