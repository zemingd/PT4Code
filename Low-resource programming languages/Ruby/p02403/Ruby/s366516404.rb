while(true) do
    sq= Array.new(2)
    sq= gets.split(" ")
    if (sq[0].to_i==0 && sq[1].to_i==0) then
        break
    end

    sq[0].to_i.times{
        sq[1].to_i.times{
            print "#"
        }
        print("\n\n\n")
    }
end