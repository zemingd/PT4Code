package main

import "fmt"

// lcm は最小公倍数を求める関数
func lcm(x int, y int) int {
	return (x * y) / gcd(x, y)
}

// gcd は最大公約数を求める関数
func gcd(x int, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func main() {
	var xNum, yNum int
	fmt.Scanf("%d %d", &xNum, &yNum)

	fmt.Println(lcm(xNum, yNum))
}