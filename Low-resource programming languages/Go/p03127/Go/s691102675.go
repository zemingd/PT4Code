package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)


func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	fmt.Println(gcd(a...))
}



func gcd(nums ...int) int {
	if len(nums) < 2 {
		panic("funciton gcd() requires at least two argument.")
	}

	f := func(a, b int) int {
		if a > b {
			return gcd(b, a)
		}
		for a != 0 {
			a, b = b%a, a
		}
		return b
	}

	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = f(res, nums[i])
	}
	return res
}
