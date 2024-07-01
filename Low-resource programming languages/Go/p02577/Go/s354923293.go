package main

import (
	"fmt"
)

func main() {
	var N string
	fmt.Scanf("%s", &N)
	var sum int
	for _, v := range N {
		sum = (sum + int(v-'0')) % 9
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")

}
