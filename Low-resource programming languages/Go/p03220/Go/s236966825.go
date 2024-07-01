package main

import (
	"fmt"
)

func main() {
	var n, ans int
	var baseT, comfortableT, gessT, hight float64
	fmt.Scan(&n, &baseT, &comfortableT)

	for i := 0; i < n; i++ {
		fmt.Scan(&hight)
		diff := comfortableT - (baseT - hight*0.006)
		if i == 0 || gessT > diff {
			gessT = diff
			ans = i + 1
		}
	}
	fmt.Println(ans)
}
