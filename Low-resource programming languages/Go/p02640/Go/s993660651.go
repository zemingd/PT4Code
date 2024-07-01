package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	result := "No"

	for i := 0; i <= x; i++ {
		if 2*i+(x-i)*4 == y {
			result = "Yes"
			break
		}
	}
	fmt.Println(result)
}
