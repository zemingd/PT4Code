package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scanf("%d%d", &H, &W)
	c := make([][]bool, H)
	for i := 0; i < H; i++ {
		c[i] = make([]bool, W)
	}
	var N int
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			var cc int
			fmt.Scanf("%d", &cc)
			c[i][j] = cc%2 == 1
			N += cc % 2
		}
	}
	N -= N % 2
	n := 0
	k := 0
	var bx, by int
	for i := 0; ; i++ {
		if k >= H*W {
			goto BREAK
		}
		for j := 0; j < W-i*2-1; j++ {
			if k >= H*W {
				goto BREAK
			}
			x, y := i+j, i
			if n%2 == 1 && n < N {
				fmt.Printf("%d %d %d %d\n", by+1, bx+1, y+1, x+1)
			}
			if c[y][x] {
				n++
			}
			bx, by = x, y
			k++
		}
		for j := 0; j < H-i*2-1; j++ {
			if k >= H*W {
				goto BREAK
			}
			x, y := W-i-1, i+j
			if n%2 == 1 && n < N {
				fmt.Printf("%d %d %d %d\n", by+1, bx+1, y+1, x+1)
			}
			if c[y][x] {
				n++
			}
			bx, by = x, y
			k++
		}
		for j := 0; j < W-i*2-1; j++ {
			if k >= H*W {
				goto BREAK
			}
			x, y := W-i-j-1, H-i-1
			if n%2 == 1 && n < N {
				fmt.Printf("%d %d %d %d\n", by+1, bx+1, y+1, x+1)
			}
			if c[y][x] {
				n++
			}
			bx, by = x, y
			k++
		}
		for j := 0; j < H-i*2-1; j++ {
			if k >= H*W {
				goto BREAK
			}
			x, y := i, H-i-j-1
			if n%2 == 1 && n < N {
				fmt.Printf("%d %d %d %d\n", by+1, bx+1, y+1, x+1)
			}
			if c[y][x] {
				n++
			}
			bx, by = x, y
			k++
		}
	}
BREAK:
}
