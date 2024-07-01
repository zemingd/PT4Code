package main

import (
	"fmt"
)

var pt []bool

func ptInit(n int) {
	pt = make([]bool, n+1)
	for i := 2; i < n; i++ {
		pt[i] = true
	}
	for i := 2; i*i <= n; i++ {
		for j := i * 2; j <= n; j += i {
			if pt[j] {
				pt[j] = false
			}
		}
	}
}

func main() {
	var X int
	fmt.Scan(&X)
	ptInit(int(1e6))
	for i := X; i <= len(pt); i++ {
		if pt[i] {
			fmt.Println(i)
			return
		}
	}
}
