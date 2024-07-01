def main
  a, b = gets.split.map(&:to_i)

  puts (a * b).odd? ? 'Yes' : 'No'
end

if __FILE__ == $0
  main
end
