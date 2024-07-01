package main

import (
	"fmt"
)

func main() {
	var n, k float64
	fmt.Scan(&n, &k)
	s := int(n) / int(k)
	r := int(n) % int(k)
	if r == 0 {
		fmt.Println(0)
	} else if s > 0 {
		ans := r
		if int(k)-r > ans {
			ans = int(k) - r
		}
		fmt.Println(int(ans))
	} else if 2*n > k {
		fmt.Println(int(k - n))
	} else {
		fmt.Println(int(n))
	}

}
