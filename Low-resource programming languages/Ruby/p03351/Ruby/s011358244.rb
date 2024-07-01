def main
  a, b, c, dist = ARGF.gets.split.map(&:to_i)

  ary = [a, b, c].sort
  # puts ary

  if (ary[1] - ary[0]) <= dist && (ary[2]-ary[1]) <= dist
    puts 'Yes'
  else
    puts 'No'
  end
end

if __FILE__ == $0
  main
end
