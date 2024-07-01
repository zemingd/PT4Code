a = gets
b = gets

if a.to_i * b.to_i % 2 == 0
    p 'Even'
elsif a.to_i * b.to_i % 2 == 1
    p 'Odd'    
end