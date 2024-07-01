package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)
	for i := range h {
		fmt.Scan(&h[i])
	}
	// fmt.Println("N", N, "h", h)
	ans := 0
	for {
		cnt := 0
		on := false
		for i := 0; i < N; i++ {
			if !on {
				if h[i] > 0 {
					h[i]--
					on = true
					cnt++
				}
			} else {
				if h[i] == 0 {
					on = false
				} else {
					h[i]--
				}
			}
		}
		if cnt == 0 {
			break
		}
		ans += cnt
		// fmt.Println("h", h, "cnt", cnt, "tot", ans)
	}
	fmt.Println(ans)
}
