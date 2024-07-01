package main

import "fmt"

func main() {
	var n, ans, cnt int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}
	var on bool
	for {
		cnt = 0
		on = false
		for i := 0; i < n; i++ {
			if h[i] > 0 {
				h[i]--
				if !on {
					cnt++
					on = true
				}
			} else {
				on = false
			}
		}
		if cnt == 0 {
			break
		} else {
			ans += cnt
		}
	}
	fmt.Println(ans)

}
