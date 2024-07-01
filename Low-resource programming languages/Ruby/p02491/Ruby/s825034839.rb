a,b=$stdin.gets.chomp.split(' ').map(&:to_i)
puts "#{a/b} #{a%b} #{Float(a)/Float(b)}"