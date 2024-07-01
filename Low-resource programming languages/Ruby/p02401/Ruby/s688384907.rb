def calc
        mp=gets.split(' ')
        a=mp[0].to_i
        op=mp[1]
        b=mp[2].to_i
        case op
        when '+' then
        ans=a+b
        when '-' then
        ans=a-b
        when '*' then
        ans=a*b
        when '/' then
        ans=a/b
        when '?' then
        ans="end"
        end
        return ans
end

ans = calc
until ans=="end" do
   printf("%d\n",ans)
   ans=calc
end