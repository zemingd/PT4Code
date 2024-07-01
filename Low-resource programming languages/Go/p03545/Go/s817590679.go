package main

import "fmt"

func main() {
	var c [4]rune
	var a [4]int
	fmt.Scanf("%c%c%c%c", &c[0], &c[1], &c[2], &c[3])
	for i := 0; i < 4; i++ {
		a[i] = int(c[i] - '0')
	}
	for i := 0; i < 8; i++ {
		x := a[0]
		var op [4]rune
		for j := uint(0); j < 3; j++ {
			if uint(i)&(1<<j) == 1 {
				x -= a[j+1]
				op[j] = '-'
			} else {
				x += a[j+1]
				op[j] = '+'
			}
		}
		if x == 7 {
			fmt.Printf("%d%c%d%c%d%c%d=7\n", a[0], op[0], a[1], op[1], a[2], op[2], a[3])
			return
		}
	}
}
