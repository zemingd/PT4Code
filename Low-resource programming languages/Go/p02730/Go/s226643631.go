package main

import (
		"fmt"
)

func reverse(s string) string{
	rs := []rune(s)
    for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
        rs[i], rs[j] = rs[j], rs[i]
    }
    return string(rs)
}

func main()  {
	var s string
	fmt.Scanf("%s", &s)
	rs := reverse(s)

	short := string([]rune(s)[:(len(s)-1)/2])
	rs_short := reverse(short)
	
	short_2 := string([]rune(s)[:(len(s)-1)/2])
	rs_short_2 := reverse(short_2)

	if s == rs && short == rs_short && short_2==rs_short_2 {
		fmt.Printf("Yes")
	}else{
		fmt.Printf("No")
	}
}