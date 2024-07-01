package main

import "fmt"

func sign(i int) int {
	if i == 0 {
		return 1
	}
	return -1
}
func s(i int) string {
	if i == 0 {
		return "+"
	}
	return "-"
}
func to_i(from int) int {
	return from - int('0')
}

func main() {
	var a, b, c, d int
	fmt.Scanf("%c%c%c%c", &a, &b, &c, &d)
	a = to_i(a)
	b = to_i(b)
	c = to_i(c)
	d = to_i(d)

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				if a+sign(i)*b+sign(j)*c+sign(k)*d == 7 {
					fmt.Printf("%d%s%d%s%d%s%d=7\n", a, s(i), b, s(j), c, s(k), d)
					return
				}
			}
		}
	}
}
