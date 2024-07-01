package main

import (
	"fmt"
	"math/big"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)

	fmt.Println(answer(k))
}

func answer(k int) int {
	gcdList := make([][]int64, 200)

	for i:=0; i<200; i++ {
		gcdList[i] = make([]int64, 200)
		for j:=0; j<200; j++ {
			gcdList[i][j] = gcd(int64(i+1), int64(j+1))
		}
	}

	res := 0

	for h:=0; h<k; h++ {
		for i:=0; i<k; i++ {
			for j:=0; j<k; j++ {
				res += int(gcdList[int(gcdList[h][i]-1)][j])
			}
		}
	}

	return res
}

func gcd(m, n int64) int64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetInt64(m)
	b := new(big.Int).SetInt64(n)
	return z.GCD(x, y, a, b).Int64()
}