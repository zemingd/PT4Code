package main

import "fmt"

var x, y int

func main() {
	fmt.Scan(&x, &y)

	if y%2 != 0 {
		fmt.Println("No")

	} else {
		if cal(0, 0) {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}

func cal(iter int, sum int) bool {
	if iter == x {
		if sum == y {
			return true
		}
		return false
	}

	if cal(iter+1, sum+2) {
		return true
	}
	if cal(iter+1, sum+4) {
		return true
	}
	return false
}