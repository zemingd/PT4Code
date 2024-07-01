package main

import (
	"fmt"
	"math"
)

// 以下の問題
// https://atcoder.jp/contests/abc110/tasks/abc110_a

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)

	// A問題なのでsortを使わずにmath.Maxで解くのが正攻法だと思う
	fmt.Println(math.Max(10*a+b+c, math.Max(10*b+a+c, 10*c+a+b)))
}
