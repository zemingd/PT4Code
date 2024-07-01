package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	money := 0
	if n % 1000 != 0{
		money = 1000 * ((n / 1000)+1) - n
	}

	fmt.Println(money)

}