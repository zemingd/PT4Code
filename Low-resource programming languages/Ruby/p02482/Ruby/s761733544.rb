10003.rb
#!/usr/local/bin/ruby
line=gets
rec=line.split(" ") 
x=rec[0].to_i 
y=rec[1].to_i

if a<b
    ans="a<b"
elsif a>b
    ans="a>b"
else
    ans="a==b"
end

puts "#{ans}"