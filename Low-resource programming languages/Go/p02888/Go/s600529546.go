package main

import (
	"fmt"
)

func main() {
	var n, l, out int
	fmt.Scanf("%d", &n)
	L := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &l)
		L[i] = l
	}
	btmp := true
	for i := 0; i < n-2; i++ {
		for ii := i + 1; ii < n-1; ii++ {
			btmp = true
			for iii := ii + 1; btmp && iii < n; iii++ {
				if L[ii] <= L[i] {
					if L[iii] > L[i]-L[ii] {
						out++
					}
				} else {
					if L[iii] > L[ii]-L[i] {
						out++
					}
				}
				if L[iii] >= L[i]+L[ii] {
					btmp = false
				}
			}
		}
	}
	fmt.Println(out)
}
