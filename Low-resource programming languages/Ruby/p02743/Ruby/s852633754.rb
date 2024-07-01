a,b,c=$<.read.split.map(&:to_i)

if c < a+b
    puts 'No'
elsif 4*a*b < (c-a-b)**2
    puts 'Yes'
else
    puts 'No'
end