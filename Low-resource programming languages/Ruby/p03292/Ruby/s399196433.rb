def main
  min, max = ARGF.gets.split.map(&:to_i).minmax

  puts max - min
end

if __FILE__ == $0
  main
end
