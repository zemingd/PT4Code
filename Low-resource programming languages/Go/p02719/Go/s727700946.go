package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int64
	fmt.Scan(&n)
	fmt.Scan(&k)
	if n != k && k != 1 {
		fmt.Println(math.Min(float64(gcd(n, k)), float64(gcd(k,n))))
	} else {
		fmt.Println(0)
	}
}

func gcd(a, b int64) int64 {
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}
