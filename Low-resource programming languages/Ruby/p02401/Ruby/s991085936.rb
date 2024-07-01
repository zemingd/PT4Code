loop do
    s = gets
    begin
        puts eval(s)
    rescue => exception
        break
    end
end
