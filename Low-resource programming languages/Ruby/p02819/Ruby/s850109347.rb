require 'prime'

def main(argv)
  x = gets.chomp.to_i
  
  while true do
    break if Prime.prime?(x)
    x += 1
  end
  
  puts x.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end