package main

import (
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var n int
	_, _ = fmt.Fscan(stdin, &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		_, _ = fmt.Fscan(stdin, &tmp)
		a[i] = tmp
	}

	colors := make([]int, 0, n)
	colors = append(colors, a[n-1])
	max := a[n-1]

	for i := n - 2; i >= 0; i-- {
		// 既に持っているcolors の最大値よりも大きい場合は新しい色を追加
		if a[i] >= max {
			colors = append(colors, a[i])
			max = a[i]
			continue
		}
		// どこかで入れ替えられる場合，入れ替えられるもののうち最小の色を入れ替えたい
		// colorsは昇順にソートされているから二分探索を使える
		t := binarySearch(colors, a[i]+1)
		colors[t] = a[i]
	}

	_, _ = fmt.Fprintf(stdout, "%d\n", len(colors))
}

// int スライスa のうち a[i] >= t を満たす最小のi を返却
func binarySearch(a []int, t int) int {
	min := 0
	max := len(a)
	mid := (min + max) / 2

	for {
		if min >= max {
			break
		}
		if a[mid] < t {
			min = mid + 1
		} else {
			max = mid
		}
		mid = (min + max) / 2
	}

	return mid
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
