_=gets;
s=gets.chomp;



memo=[s.count(".")]

(1..s.size).each{|i|
    memo[i]=memo[i-1]+1 if(s[i-1]=="#");
    memo[i]=memo[i-1]-1 if(s[i-1]==".");
}

p memo.min