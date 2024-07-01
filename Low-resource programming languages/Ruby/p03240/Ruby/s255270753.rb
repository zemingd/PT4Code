n = gets.chomp.to_i
maxim = 101
memo = Array.new(maxim).map{Array.new(maxim, true)}
ch = Array.new(maxim).map{Array.new(maxim, nil)}

n.times do |i|
    x, y, h = gets.chomp.split(" ").map(&:to_i)
    maxim.times do |cy|
        maxim.times do |cx|
            if ch[cy][cx] == nil
                ch[cy][cx] = [h + (x-cx).abs + (y-cy).abs, 0].max                
            else
                memo[cy][cx] = false if ch[cy][cx] != [h + (x-cx).abs + (y-cy).abs, 0].max
            end
        end
    end
end

maxim.times do |cy|
    maxim.times do |cx|
        if memo[cy][cx] == true then
            puts cx.to_s + " " + cy.to_s + " " + ch[cy][cx].to_s
            exit
        end
    end
end