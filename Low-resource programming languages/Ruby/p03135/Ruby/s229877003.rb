#!/usr/bin/ruby

def solve(t, x)
  t.to_f / x
end

def each_case(str)
  str.each_line
    .map {|ln| 
      ln.chomp.split(/\s+/).map(&:to_i)
    }
    .each {|t, x| yield t,x }
end

each_case(STDIN.read) do |t, x|
  puts solve(t, x).to_s
end

