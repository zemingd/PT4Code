H,W = gets.split.map(&:to_i)
puts (0...H).map{ gets.chomp }
  .reject{ |n| n.match(/^\.+$/) }
  .map{ |n| n.split("") }
  .transpose
  .map{ |ns| ns.join("") }
  .reject{ |n| n.match(/^\.+$/) }
  .map{ |n| n.split("") }
  .transpose
  .map{ |ns| ns.join }
