package main

import (
	"fmt"
)

func abs(a int)int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	p := make([]int, n)
	apn := 0
	for i := 0; i < n; i++ {
		p[i] = l + i
		apn += p[i]
	}

	absa := apn
	ans := 0
	for i := 0; i < n; i++ {
		apnm := apn - p[i]
		if absa > abs(apn - apnm) {
			absa = abs(apn - apnm)
			ans = apnm
		}
	}
	fmt.Println(ans)
}