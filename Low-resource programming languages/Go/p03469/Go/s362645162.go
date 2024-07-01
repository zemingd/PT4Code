package main

import "fmt"

func main() {
	var n, y int
	fmt.Scan(&n, &y)
	fmt.Println(calcMoney(n, y))
}

func calcMoney(n int, yen int) (str string) {
	for x := 0; x <= n; x++ {
		for y := 0; y <= n; y++ {
			z := n - x - y
			if 0 <= z && yen == 10000*x+5000*y+1000*z {
				return fmt.Sprintf("%d %d %d", x, y, z)
			}
		}
	}
	return "-1 -1 -1"
}