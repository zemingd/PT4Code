
def solve(day)
    next_sunday = {"SUN"=>7,"MON"=>6,"TUE"=>5,"WED"=>4,"THU"=>3,"FRI"=>2,"SAT"=>1}
    next_sunday[day]
end

def main()
    s = gets.chomp()
    ans = solve(s)
    p ans
end

main()