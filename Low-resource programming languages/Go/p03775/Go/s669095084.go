package main

import (
	"fmt"
	"math"
)

func f(x int) int {
	ret := 0
	for 0 < x {
		x /= 10
		ret++
	}
	return ret
}

func main() {
	var n float64
	fmt.Scan(&n)
	wareru := 0
	for i := 1.0; i <= math.Sqrt(n); i += 1.0 {
		if int(n)%int(i) == 0 {
			wareru = int(i)
		}
	}
	b := int(n) / wareru
	// それぞれの桁数を比較して大きい方
	aketa, bketa := f(wareru), f(b)
	fmt.Println(int(math.Max(float64(aketa), float64(bketa))))
}

