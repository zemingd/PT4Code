package main

import "fmt"

func main() {
	in, an := 0, 0
	fmt.Scanf("%d", &in)
	for i := 1; i <= in; i++ {
		for j := 1; j <= in; j++ {
			for k := 1; k <= in; k++ {
				an += gcd(i, j, k)
			}
		}
	}
	fmt.Println(an)
}
func gcd(a, b, c int) int {
	return gcd2(a, gcd2(b, c))
}
func gcd2(a, b int) int {
	if b == 0 {
		return a
	} else {
		return gcd2(b, a%b)
	}
}