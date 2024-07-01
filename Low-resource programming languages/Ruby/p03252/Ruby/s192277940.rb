result = Array.new(2){ gets.chomp.chars }
  .transpose.uniq.transpose
  .all?{ |ary| ary.size == ary.uniq.size }
puts result ? "Yes" : "No"