package main

import (
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scanln(&s)

	var a, b, c, d int
	a = int(s[0] - '0')
	b = int(s[1] - '0')
	c = int(s[2] - '0')
	d = int(s[3] - '0')

	// fmt.Println(a, b, c, d)

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				b2 := b
				bs := '+'
				if i == 1 {
					b2 *= -1
					bs = '-'
				}
				c2 := c
				cs := '+'
				if j == 1 {
					c2 *= -1
					cs = '-'
				}
				d2 := d
				ds := '+'
				if k == 1 {
					d2 *= -1
					ds = '-'
				}
				if a+b2+c2+d2 == 7 {
					fmt.Printf("%d%c%d%c%d%c%d=7\n", a, bs, b, cs, c, ds, d)
					os.Exit(0)
				}
			}
		}
	}
}
