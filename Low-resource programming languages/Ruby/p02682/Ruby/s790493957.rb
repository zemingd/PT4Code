A,B,C,K = gets.split.map &:to_i

if A>=K then
    p K
else
    p A - [(K-(A+B)),0].max
e