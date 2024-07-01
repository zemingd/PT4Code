package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scanln(&a)
	fmt.Scanln(&b)
	fmt.Scanln(&c)
	fmt.Scanln(&x)

	// fmt.Println(a, b, c, x)

	result := moneySum(a, b, c, x)
	fmt.Println(result)
}

func moneySum(a, b, c, x int) int {
	// fmt.Printf("a=%d, b=%d, c=%d, x=%d\n", a, b, c, x)
	if x == 0 {
		return 1
	} else if x < 0 {
		return 0
	}

	result := 0
	if a > 0 {
		result += moneySum(a-1, b, c, x-500)
	}
	if b > 0 {
		result += moneySum(0, b-1, c, x-100)
	}
	if c > 0 {
		result += moneySum(0, 0, c-1, x-50)
	}
	return result
}
