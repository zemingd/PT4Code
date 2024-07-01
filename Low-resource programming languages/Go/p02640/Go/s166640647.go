package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	ok := false
	for i := 0; i <= x; i++ {
		if 2*i+4*(x-i) == y {
			ok = true
			break
		}
	}

	if ok == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}