Weather = ['Sunny', 'Cloudy', 'Rainy']

def main(argv)
  s = gets.chomp
  
  n = Weather.find_index(s)
  
  puts Weather[(n + 1) % 3]
end

if self.to_s == 'main' then
  main(ARGV)
end