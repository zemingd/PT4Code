package main

import (
	"fmt"
)

func main() {
	days := []string{"SAT", "FRI", "THU", "WED", "TUE", "MON", "SUN"}
	var s string
	fmt.Scanf("%s", &s)
	var sIndex int
	for i, v := range days {
		if v == s {
			sIndex = i
			break
		}
	}

	fmt.Printf("%d\n", sIndex+1)
}