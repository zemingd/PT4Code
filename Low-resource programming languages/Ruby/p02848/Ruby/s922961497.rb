N = gets.to_i
arr = gets.split("")
alf = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
ans = []

arr.each do |s|
    if alf.index(s)+N > 25
        ans.push(alf[alf.index(s)+N - 26])
    else
        ans.push(alf[alf.index(s)+N - 26])
    end
end

ans.each do |n|
    print n
end
