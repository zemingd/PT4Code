package main

import "fmt"

func main() {

	var a string
	fmt.Scan(&a)

	result := "Good"
	for i := 0; i < len(a)-1; i++ {
		if a[i] == a[i+1] {
			result = "Bad"
			break
		}
	}
	fmt.Println(result)
}
