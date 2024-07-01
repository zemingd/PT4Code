package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var a, b, c, d int
	a = int(s[0] - '0')
	b = int(s[1] - '0')
	c = int(s[2] - '0')
	d = int(s[3] - '0')

	for _, k1 := range []int{-1, 1} {
		for _, k2 := range []int{-1, 1} {
			for _, k3 := range []int{-1, 1} {
				if a+k1*b+k2*c+k3*d == 7 {
					op := map[int]string{-1: "-", 1: "+"}
					fmt.Print(a)
					fmt.Print(op[k1])
					fmt.Print(b)
					fmt.Print(op[k2])
					fmt.Print(c)
					fmt.Print(op[k3])
					fmt.Print(d)
					fmt.Println("=7")
					return
				}
			}
		}
	}
}
