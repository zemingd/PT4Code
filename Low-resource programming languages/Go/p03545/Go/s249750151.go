package main

import (
	"fmt"
	"strconv"
)

func i2s(i int) string { return strconv.Itoa(i) }
func main() {
	var abcd string
	fmt.Scan(&abcd)
	a := [4]int{}
	for i := 0; i < 4; i++ {
		a[i] = int(abcd[i] - '0')
	}
	for i := 0; i < (1 << uint(3)); i++ {
		x := a[0]
		for j := 0; j < 3; j++ {
			if ((i >> uint(j)) & 1) == 1 {
				x += a[j+1]
			} else {
				x -= a[j+1]
			}
		}
		if x == 7 {
			s := i2s(a[0])
			for j := 0; j < 3; j++ {
				if ((i >> uint(j)) & 1) == 1 {
					s += "+"
				} else {
					s += "-"
				}
				s += i2s(a[j+1])
			}
			s += "=7"
			fmt.Println(s)
			return
		}
	}
}
