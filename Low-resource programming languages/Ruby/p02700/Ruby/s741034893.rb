HP_t, ATT_t, HP_a, ATT_a = gets.split
tHP = HP_t.to_i
tATT = ATT_t.to_i
aHP = HP_a.to_i
aATT = ATT_a.to_i

while(aHP >= 0 || tHP >= 0)
    aHP = aHP - tATT
    if(aHP <=0)
        p 'Yes'
        break
    end
    tHP = tHP - aATT
    if(tHP <=0)
        p 'No'
        break
    end
end