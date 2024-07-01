package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	var k float64
	fmt.Scan(&n, &k)

	// n を k進数にした時に何桁になるか？
	//ex : 10 を 2進数 = 2^3 + 2^1 = 1010 => 4桁
	//桁数は最上位の位で決まる。この場合2^3 <= 10 < 2^4 であるため 4になった
	//抽象化すると k^x <= n < k^(x+1) を満たすxを見つけ x+1を出力する

	var x float64 = 0.0
	for {
		under := math.Pow(k, x)
		upper := math.Pow(k, x+1)

		if under <= n && n < upper {
			fmt.Println(x + 1)
			return
		}
		x++
	}

}
