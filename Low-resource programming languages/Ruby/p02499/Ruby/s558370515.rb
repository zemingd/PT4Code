ch = {}
("a".."z").each do |e|
    ch.store(e, 0)
end
while (input = gets)
    input  = input.downcase
    input.split("").each {|e|
        ch[e] += 1 if ch.key?(e)
    }
end

("a".."z").each do |e|
    puts "#{e} : #{ch[e]}"
end