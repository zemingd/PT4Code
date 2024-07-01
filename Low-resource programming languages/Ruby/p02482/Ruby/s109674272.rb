10003.rb
#!/usr/local/bin/ruby
line=gets
rec=line.split(" ") 
x=rec[0].to_i 
y=rec[1].to_i


if x<y
  puts "x<y"   
elsif x>y
  puts "x>y"
else
  puts "x==y"
end