package main

import "fmt"

func main() {
	var hp int
	var ap int
	var ans int
	fmt.Scan(&hp, &ap)
	ans = hp/ap + min(hp%ap, 1)
	fmt.Print(ans)
}

func min(left, right int) int {
	if left >= right {
		return right
	}
	return left
}