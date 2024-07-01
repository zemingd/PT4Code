HP_t, ATT_t, HP_a, ATT_a = gets.split
HPt = HP_t.to_i
ATTt = ATT_t.to_i
HPa = HP_a.to_i
ATTa = ATT_a.to_i

while(true)
    HPa=- ATTt
    if(HPa <= 0)
        p 'Yes'
        break
    end
    HPt =- ATTa
    if(HPt <=0)
        p 'No'
        break
    end
end