package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	res := false
	for i := 0; i < (N%28)/4; i++ {
		if (N-4*i)%7 == 0 && (N-4*i)/7 >= 0 {
			res = true
			break
		}
	}
	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
