package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	money := 100
	count := 0
	for{
		money = int(float64(money) * 1.01)
		count++
		if money >= n{
			fmt.Println(count)
			break
		}
	}
}