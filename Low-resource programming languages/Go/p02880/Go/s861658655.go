package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	res := false
	for i := 1; i <= 9; i++ {
		if n%i == 0 && n/i <= 9 {
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
