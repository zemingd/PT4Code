_ = input()
 s = input()
 place_holder = s[0]
 count = 1
 for letter in s[1:]:
     if place_holder == letter:
         continue
     else:
         place_holder = letter
         count += 1