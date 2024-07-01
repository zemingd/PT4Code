package main

import "fmt"

func main() {
	var k, x int
	fmt.Scan(&k, &x)

	result := "No"

	if 500*k >= x {
		result = "Yes"
	}
	fmt.Println(result)

}
