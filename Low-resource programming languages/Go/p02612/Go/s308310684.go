package main

import "fmt"

const bill = 1000

func main() {
	var n int
	fmt.Scan(&n)
	for n > bill {
		n = n - bill
	}
	fmt.Println(bill - n)
}
