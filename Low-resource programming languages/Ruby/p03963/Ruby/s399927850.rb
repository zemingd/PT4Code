def main
  n, k = ARGF.gets.split.map(&:to_i)

  puts k * (k-1)**(n-1)
end

if __FILE__ == $0
  main
end
