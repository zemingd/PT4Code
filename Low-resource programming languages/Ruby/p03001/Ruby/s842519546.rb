W, H, x, y = gets.strip.split.map(&:to_f)

if (W/2-x).abs<0.0000001 && (H/2-y).abs<0.0000001
    a=1
else
    a=0
end



puts "#{W*H/2} #{a}"
