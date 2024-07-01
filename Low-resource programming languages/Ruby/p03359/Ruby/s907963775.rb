month, date = gets.split(' ').map(&:to_i)

if date < month then
    p month - 1
else
    p month
end