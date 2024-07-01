package main

import "fmt"

func main() {
	var n, k float64
	fmt.Scan(&n, &k)
	var r float64
	for i :=1.0; i<=n; i++ {
		if i >= k {
			r += 1/n
		} else {
			// 倍だからある範囲まではずーっと同じ確率が連続する内容で軽くできるけどあとで
			l := 1.0
			tmp := i

			for j:=0; j<100000; j++ {
				tmp *= 2
				l = l * 1/2
				if tmp >= k {
					r += 1/n * l
					break
				}
			}
		}
	}
	fmt.Println(r)
}
