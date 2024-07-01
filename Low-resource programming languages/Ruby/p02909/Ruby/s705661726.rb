weather = ["Sunny", "Cloudy", "Rainy"]
S=gets
S.chomp!
for i in (0..2) do
    if S==weather[i]
        if (i!=2)
            p weather[i+1]
        else
            p weather[0]
        end
    end
end