s = gets.split[0]
ss = s[-1]
if ss == '3'
    print 'bon'
elsif ss == '0' || ss == '1' || ss == '6' || ss == '8'
    print 'pon'
else
    print 'hon'
end