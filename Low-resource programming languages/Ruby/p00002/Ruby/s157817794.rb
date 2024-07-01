while gets =~ /^(\d+)\s+(\d+)$/
  puts "#{$1.to_i + $2.to_i}".size
end