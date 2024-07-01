package main

import (
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var n int
	_, _ = fmt.Fscan(stdin, &n)

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		_, _ = fmt.Fscan(stdin, &tmp)
		arr[i] = tmp
	}

	colors := make([]int, 0, n)
	colors = append(colors, arr[n-1])
	max := arr[n-1]

	for i := n - 2; i >= 0; i-- {
		// 既に持っているcolors の最大値よりも大きい場合は新しい色を追加
		if arr[i] >= max {
			colors = append(colors, arr[i])
			max = arr[i]
		} else {
			// どこかで入れ替えられる場合，入れ替えられるもののうち最小の色を入れ替えたい
			// colorsは昇順にソートされているから二分探索を使える
			t := binarySearch(colors, arr[i])
			if t < len(colors) {
				colors[t] = arr[i]
			} else {
				colors = append(colors, arr[i])
				max = arr[i]
			}
		}
	}

	_, _ = fmt.Fprintf(stdout, "%d\n", len(colors))
}

func binarySearch(arr []int, target int) int {
	left := -1
	right := len(arr)

	for right-left > 1 {
		mid := left + (right-left)/2

		if arr[mid] > target {
			right = mid
		} else {
			left = mid
		}
	}

	return right
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
