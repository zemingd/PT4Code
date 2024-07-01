_=gets();
h=gets().split.map(&:to_i);


cnt=0;
max=0;

h.each{|x|
    if (max <=x)
        max=x
        cnt++;
    end
}

print cnt