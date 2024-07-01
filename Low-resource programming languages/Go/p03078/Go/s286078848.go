package main

import (
	"fmt"
	"os"
	"sort"
)

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	var x, y, z, k int
	fmt.Fscan(fp, &x, &y, &z, &k)
	aList := make([]float64, x)
	bList := make([]float64, y)
	cList := make([]float64, z)
	for i := 0; i < x; i++ {
		fmt.Fscan(fp, &aList[i])
	}
	for i := 0; i < y; i++ {
		fmt.Fscan(fp, &bList[i])
	}
	for i := 0; i < z; i++ {
		fmt.Fscan(fp, &cList[i])
	}
	sort.Sort(sort.Reverse(sort.Float64Slice(aList)))
	sort.Sort(sort.Reverse(sort.Float64Slice(bList)))
	sort.Sort(sort.Reverse(sort.Float64Slice(cList)))

	var ans []float64

	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			if (i+1)*(j+1) > 3000 {
				break
			}
			for l := 0; l < z; l++ {
				if (i+1)*(j+1)*(l+1) > 3000 {
					break
				}
				ans = append(ans, aList[i]+bList[j]+cList[l])
			}
		}
	}
	sort.Sort(sort.Reverse(sort.Float64Slice(ans)))

	for i := 0; i < k && i < 3000; i++ {
		fmt.Println(int64(ans[i]))
	}
}
