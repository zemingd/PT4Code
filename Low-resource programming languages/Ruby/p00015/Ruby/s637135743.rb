#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
$debug=0
N=80
def aux(a, b)
  nmax = (a.length > b.length) ? a.length : b.length
  c = [0]

  nmax.times{|i|
    puts "a,b: #{a[i]},#{b[i]}" if $debug>0
    x =  c[i]
    x += a[i] if i < a.length
    x += b[i] if i < b.length
    c[i] = x % 10
    c[i+1] = x / 10
  }

  c.pop if c[-1]==0

  return c

end

def main
  fh=STDIN
  n = fh.gets.chomp.to_i
  n.times {|i|
    a=fh.gets.strip.split(//).reverse.map(&:to_i)
    b=fh.gets.strip.split(//).reverse.map(&:to_i)
    if a.length>N or b.length>N
      puts "overflow"
      next
    end
    puts "a: #{a}" if $debug>3
    puts "b: #{b}" if $debug>3
    c=aux(a,b)
    s=c.reverse.join("")
    if s.length>N
      puts "overflow"
      puts "s: #{s}" if $debug>1
    else
      puts s
    end
  }

end

if $0 == __FILE__ then
  main
end

