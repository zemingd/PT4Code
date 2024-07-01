a,b=gets.chomp.split(" ").map(&:to_i);

a_group[] = {1, 3, 5, 7, 8, 10. 12}
b_group[] = {4, 6, 9, 11}
c_group[] = {2}

for var in a_group do
     if (a == a_group[var]) && (b == a_group[var]){
         result = "Yes";
     }
end

for var in b_group do
    if (a == b_group[var]) && (b == b_group[var]) && (result != "Yes"){
        result = "Yes"
    }
end

for var in c_group do
    if (a == b_group[var]) && (b == b_group[var]) && (result != "Yes"){
        result = "Yes"
    }
end

if (result != "Yes"){
    result = "No"
}

print(result)