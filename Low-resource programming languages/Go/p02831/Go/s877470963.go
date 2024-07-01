package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(a * b / saikou(a, b))
}

func saikou(a int, b int) int {
	if a%b == 0 {
		return b
	}
	return (saikou(b, a%b))

}
