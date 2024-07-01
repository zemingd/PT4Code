package main

import "fmt"

func main() {

	var a, b, c int
	fmt.Scan(&a, &b, &c)
	minResult := 0
	if a+b <= a+c && a+b <= b+c {
		minResult = a + b
	} else if a+c < a+b && a+c <= b+c {
		minResult = a + c
	} else {
		minResult = b + c
	}
	fmt.Println(minResult)

}
