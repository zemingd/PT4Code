package main

import (
	"fmt"
)

func main() {
	k, s := 0, ""
	fmt.Scanf("%d", &k)
	fmt.Scanf("%s", &s)

	if len(s) > k {
		fmt.Println(s[:k] + "...")
	} else {
		fmt.Println(s)
	}
}
