package main

import "fmt"

func main() {
	l, r := 0, 0
	fmt.Scanf("%d %d", &l, &r)
	minner := l * (l + 1)
	for i := l; i < r && i <= l+2019; i++ {
		for j := i + 1; j <= r || j < i+2020; j++ {
			minner = min(minner, i*j%2019)
		}
	}
	fmt.Println(minner)
}
func min(i, j int) int {
	if i <= j {
		return i
	} else {
		return j
	}
}
