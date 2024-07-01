package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	s1 := s[:(len(s)-1)/2]
	s2 := s[(len(s)+3-1)/2:]
	f := equal(s1, s2)
	if f {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func equal(s1, s2 string) bool {
	if len(s1) == 1 {
		return true
	} else if len(s1) == 2 {
		if s1[0] == s1[1] && s2[0] == s2[1] {
			return true
		} else {
			return false
		}
	} else {
		for i := 0; i < len(s1); i++ {
			if s1[i] != s2[i] {
				return false
			}
		}
        for i, j :=0,len(s2)-1; i < j ; i, j = i+1, j-1 {
        if s1[i] != s1[j] || s2[i] != s2[j] {
          return false
        }
          
          if s1[0] != s1[len(s1)-1] || s2[0] != s2[len(s2)-1] {
            return false
          }
      }
	}

	return true
}


