package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n, h int
	fmt.Fscan(r, &n)
	fmt.Fscan(r, &h)

	as := make([]int, n)
	bs := make([]int, n)
	maxAK := []int{0, 0}
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &as[i])
		fmt.Fscan(r, &bs[i])

		if maxAK[0] < as[i] {
			// 振って最も大きいダメージを与えられる刀を保持
			maxAK[0] = as[i]
			maxAK[1] = bs[i]
		}
	}
	sort.Sort(sort.IntSlice(as))
	sort.Sort(sort.IntSlice(bs))

	ans := 0

	// まずは投げてみる
	for i := n - 1; i >= 0; i-- {
		if h-bs[i] > 0 && bs[i] == maxAK[1] {
			// 投げるだけで足りない場合は、
			continue
		}

		h -= bs[i]
		ans++

		if h <= 0 {
			break
		}
	}

	// 投げて不足する場合は、振って攻撃する
	if h > 0 {
		swingCount := max(0, (h-maxAK[1]+maxAK[0]-1)/maxAK[0])
		ans += swingCount + 1
	}

	fmt.Println(ans)
}

// Utility

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func primeFactor(x int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			res[i]++
			x = x / i
		}
	}
	if x != 1 {
		res[x] = 1
	}
	return res
}

func divisor(x int) []int {
	res := make([]int, 0)
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			res = append(res, i)
			if i != x/i {
				res = append(res, x/i)
			}
		}
	}
	return res
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}
