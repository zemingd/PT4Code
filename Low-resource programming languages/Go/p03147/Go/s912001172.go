package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	var h []int
	for range make([]struct{}, N) {
		var x int
		fmt.Scan(&x)
		h = append(h, x)
	}

	cnt := 0
	for len(h) > 0 {
		i := 0
		flg := false
		for i < len(h) && h[i] > 0 {
			h[i]--
			i++
			flg = true
		}
		if flg {
			cnt++
		}
		if h[0] == 0 {
			h = h[1:]
		}
	}
	fmt.Println(cnt)
}
