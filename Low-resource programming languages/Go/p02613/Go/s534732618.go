package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	s := make([]string, n)
	for i := 0; i < len(s); i++ {
		fmt.Scanf("%s", &s[i])
	}

	var s1, s2, s3, s4 int
	for i := 0; i < len(s); i++ {
		if "AC" == s[i] {
			s1 = s1 + 1
		} else if "WA" == s[i] {
			s2 = s2 + 1
		} else if "TLE" == s[i] {
			s3 = s3 + 1
		} else {
			s4 = s4 + 1
		}
	}

	fmt.Println("AC x", s1)
	fmt.Println("WA x", s2)
	fmt.Println("TLE x", s3)
	fmt.Println("RE x", s4)
}
