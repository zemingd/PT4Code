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
	yz := make([]float64, y*z)

	for i := 0; i < y; i++ {
		for j := 0; j < z; j++ {
			yz[i*z+j] = bList[i] + cList[j]
		}
	}
	cnt := k

	sort.Sort(sort.Reverse(sort.Float64Slice(yz)))
	sum := yz[:]
	if len(sum) > cnt {
		sum = yz[0:cnt]
	}
	cnt = len(sum)
	ans := make([]float64, x*cnt)
	for i := 0; i < x; i++ {
		for j := 0; j < cnt; j++ {
			ans[i*cnt+j] = aList[i] + sum[j]
		}
	}
	sort.Sort(sort.Reverse(sort.Float64Slice(ans)))

	for i := 0; i < k && i < 3000; i++ {
		fmt.Println(int64(ans[i]))
	}
}
