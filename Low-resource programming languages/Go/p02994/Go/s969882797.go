package main

import "fmt"

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	allSum := 0
	min := 10000
	num := 0
	for i := 1 ; i  <= n ;i++ {
		allSum += l + i - 1
		if  min > abs(l + i - 1 ) {
			min =  abs(l + i - 1 )
			num = l + i -1
		}
	}
	fmt.Println(allSum - num)
}
func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}
