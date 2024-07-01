package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := (n / 2) + n%2
	fmt.Println(ans)

}
