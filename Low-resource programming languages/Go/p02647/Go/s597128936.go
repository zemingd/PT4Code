package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		a[i] = tmp
	}

	lastA := a
	// 試行の繰り返し
	for j := 0; j < k; j++ {
		// j回目の試行が終わったときの電球の強さ = 解答
		// fmt.Println(lastA)
		newA := make([]int, n)
		// 電球ごとの計算
		for l := 0; l < n; l++ {
			// lの電球が照らしている端っこの座標
			left := int(float64((l)-lastA[l]) + 0.5)
			right := int(float64((l)+lastA[l]) + 0.5)
			if left < 0 {
				left = 0
			}
			if right > n-1 {
				right = n - 1
			}
			// fmt.Printf("%d[強さ:%d]が照らしている範囲[%d ~ %d]\n", l, lastA[l], left, right)

			for y := left; y <= right; y++ {
				newA[y]++
			}
		}
		// fmt.Println(newA)
		lastA = newA
	}

	var strLastA []string
	for _, i := range lastA {
		strLastA = append(strLastA, strconv.Itoa(i))
	}
	fmt.Println(strings.Join(strLastA, " "))
}
