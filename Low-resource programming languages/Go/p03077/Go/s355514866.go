// 最小値がボトルネックになり、題意からボトルネックだけ考えればよさそう
// あとは問題文をろくに読まずサンプルだけ見た
// サンプル見たらボトルネックの位置も関係ある そりゃそうだ
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	minA := int(1e18)
	for i := 0; i < 5; i++ {
		var V int
		fmt.Scan(&V)
		minA = min(minA, V)
	}
	if N%minA != 0 {
		fmt.Println(N/minA + 1 + 4)
	} else {
		fmt.Println(N/minA + 4)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
