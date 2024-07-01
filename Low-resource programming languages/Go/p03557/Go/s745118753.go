package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	br := make([]int, n)
	cr := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sort.Ints(ar)
	for i := range br {
		fmt.Scan(&br[i])
	}
	sort.Ints(br)
	for i := range cr {
		fmt.Scan(&cr[i])
	}
	sort.Ints(cr)

	dr := make([]int, n)
	bi := n - 1
	for i := n - 1; i >= 0; i-- {
		for bi >= 0 {
			if ar[i] < br[bi] {
				dr[bi] = i + 1
				bi--
			} else {
				break
			}
		}
	}
	for i := 1; i < n; i++ {
		dr[i] += dr[i-1]
	}
	er := make([]int, n)
	ci := n - 1
	for i := n - 1; i >= 0; i-- {
		for ci >= 0 {
			if br[i] < cr[ci] {
				er[ci] += dr[i]
				ci--
			} else {
				break
			}
		}
	}
	ans := 0
	for _, v := range er {
		ans += v
	}
	fmt.Println(ans)
}
