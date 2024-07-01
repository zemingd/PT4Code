package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	l := make([]int, n)

	for i := 0; i < n; i++ {
		l[i] = nextInt()
	}

	cnt := 0
	for {
		//fmt.Println(cnt, l)
		// 最大の偶数を/2する。それ以外は*3する。

		// 最大の偶数を探す
		maxeven := 0
		maxevenidx := -1
		for j := 0; j < n; j++ {
			if l[j]%2 == 0 {
				if maxeven < l[j] {
					maxeven = l[j]
					maxevenidx = j
				}
			}
		}
		if maxevenidx == -1 {
			break // 偶数なし
		}

		// 最大の偶数を/2する。それ以外は*3する。
		for j := 0; j < n; j++ {
			if j == maxevenidx {
				l[j] /= 2
			} else {
				l[j] *= 3
			}
		}
		cnt++
	}

	fmt.Println(cnt)

}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
