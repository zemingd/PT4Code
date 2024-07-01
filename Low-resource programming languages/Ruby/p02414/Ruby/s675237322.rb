a = Array.new(2).map { [] }
n, m, l = gets.split(' ').map(&:to_i)

n.times { a[0] << gets.split(' ').map(&:to_i) }
m.times { a[1] << gets.split(' ').map(&:to_i) }

n.times do |ni|
  l.times do |li|
    sum = 0
    m.times { |mi| sum += a[0][ni][mi] * a[1][mi][li] }
    print ' ' unless li.zero?
    print "#{sum}"
  end
  puts
end