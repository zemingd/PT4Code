package main

import (
	"fmt"
	"math"
)

func main()  {
	var num, total int

	fmt.Scan(&num, &total)

	// ダイスでトータルを超える確率
	clearRatio := float64(0.0)
	max := num
	if num >= total {
		clearRatio = 1 - float64(total) / float64(num)
		max = total
	}

	// トータルより下の
	// 数値で、連続して振ってクリアしなければならない数を出す
	z := float64(1) / float64(num)
	for i := 1; i <= max; i++ {
		cnt := 0
		x := i

		for x < total {
			x = x * 2
			cnt++
		}

		clearRatio += z * math.Pow(0.5, float64(cnt))
	}

	fmt.Println(clearRatio)
}
