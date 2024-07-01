package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func NextLine() string {
	sc.Scan()
	return sc.Text()
}

func NextIntLine() int {
	integer, e := strconv.Atoi(NextLine()) // 500
	if e != nil {
		panic(e)
	}
	return integer
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func main() {
	var (
		A, B, C, X int
	)

	A = NextIntLine() // 500
	B = NextIntLine() // 100
	C = NextIntLine() // 50
	X = NextIntLine()

	a := min(X/500, A)
	b := min(X/100, B)
	c := min(X/50, C)

	cnt := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if 500*i+100*j+50*k == X {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
