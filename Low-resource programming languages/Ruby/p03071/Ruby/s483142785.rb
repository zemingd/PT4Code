#!/usr/bin/env ruby

def main(argv)
  (a, b) = gets.chomp.split(' ').map(&:to_i)
  if (a - b).abs >= 2 then
    puts ([a, b].max * 2 - 1).to_s
  else
    puts (a + b).to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end