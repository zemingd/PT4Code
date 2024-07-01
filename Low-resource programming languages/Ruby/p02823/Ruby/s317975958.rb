input = readlines
xxxx = input[0].split(" ")

n = xxxx[0].to_i
a = xxxx[1].to_i
b = xxxx[2].to_i

a = a - 1;
b = b - 1;

if (b - a) % 2 == 0
    cout << (b - a) / 2 << endl
else
    if (a >= n - b)
        p a + 1 + (b - (a + 1)) / 2
    else
        p ((n - 1) - b) + 1 + ((n - 1) - (a + ((n - 1) - b))) / 2
    end
end