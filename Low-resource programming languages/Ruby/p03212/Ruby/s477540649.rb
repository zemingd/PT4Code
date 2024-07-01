@n=gets.to_i
def sitigo(s)
    return 0 if s.to_i>@n
    f=[false,false,false]
    s.chars.each{|c|f[(c.to_i-3)/2]=true}
    return ((f.all?)?1:0)+sitigo(s+'3')+sitigo(s+'5')+sitigo(s+'7')
end
p sitigo('')