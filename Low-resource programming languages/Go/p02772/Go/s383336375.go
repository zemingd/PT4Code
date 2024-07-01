package main

import (
	"fmt"
)

func judge(a int) bool {
	if a%2 != 0 {
		return true
	}

	if a%3 == 0 || a%5 == 0 {
		return true
	}

	return false

}

func main() {
	var n int

	fmt.Scanln(&n)

	count := 0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if !judge(a) {
			break
		}
		count++
	}

	if count == n {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
