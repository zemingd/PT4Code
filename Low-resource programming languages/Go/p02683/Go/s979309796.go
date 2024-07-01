package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var a [13][13]int

func main() {
	scanInit()

	n := nextInt()
	m := nextInt()
	x := nextInt()
	c := make([]int, n)
	for i := 0; i < n; i++ {
		c[i] = nextInt()
		for j := 0; j < m; j++ {
			a[i][j] = nextInt()
		}
	}

	costmin := 1000000
	for bit := 0; bit < (1 << n); bit++ {
		nowcost := 0
		nowskill := make([]int, m)
		for j := 0; j < n; j++ {
			if bit&(1<<j) != 0 { // 今回ヒットした場合
				nowcost += c[j]
				for k := 0; k < m; k++ {
					nowskill[k] += a[j][k]
				}
			}
		}
		skilled := true
		for i := 0; i < m; i++ {
			if nowskill[i] < x {
				skilled = false
				if bit == (1<<n)-1 {
					fmt.Println(-1)
					return
				}
			}
		}
		if skilled == true {
			costmin = min(costmin, nowcost)
		}
	}

	fmt.Println(costmin)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
