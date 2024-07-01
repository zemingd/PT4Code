#!/usr/local/bin/ruby

line=gets
x=line.to_i

def xcubic(x)
return x*x*x
end

puts "#{xcubic(x)}"