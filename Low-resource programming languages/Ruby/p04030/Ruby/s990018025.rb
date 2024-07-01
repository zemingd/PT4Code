a = gets.chomp.split('')
r = []

a.each do |e|
    case e
    when '0', '1'
        r.push(e)
    when 'B'
        r.pop
    end
end
puts r.join