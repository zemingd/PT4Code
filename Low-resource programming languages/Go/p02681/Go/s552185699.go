package main

import (
	"fmt"
)

func main() {
	k, s := "", ""
	fmt.Scanf("%s", &k)
	fmt.Scanf("%s", &s)

	if k==s[:len(s)-1] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}