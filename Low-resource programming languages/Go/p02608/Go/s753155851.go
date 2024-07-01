package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()

	var anslist []int = []int{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 3, 0, 0}
	if n <= 20 {
		for i := 1; i <= n; i++ {
			fmt.Println(anslist[i-1])
		}
		return
	}

	ans := 0
	for i := 1; i <= n; i++ {
		if i <= 20 {
			fmt.Println(anslist[i-1])
			continue
		}

		// xとyでloop回す
		ans = 0
		for x := 1; x <= 100; x++ {
			for y := 1; y <= 100; y++ {
				hy := x*x + y*y
				if hy > i {
					break
				}
				// 2次方程式 zz+bz+c=0
				b := x + y
				c := hy + x*y - i

				h := b*b - 4*c
				if h < 0 {
					continue // 解がない
				}

				bs := math.Sqrt(float64(h))
				if !isInteger(bs) {
					continue // 整数解がない
				}

				kai := (bs - float64(b)) / 2.0
				if kai >= 1.0 && isInteger(kai) {
					ans++
				}
			}

		}

		fmt.Println(ans)
	}

}
func isInteger(x float64) bool {
	return math.Floor(x) == x
}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
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
