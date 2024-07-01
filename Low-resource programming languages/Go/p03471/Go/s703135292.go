package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type xyz struct {
	x int
	y int
	z int
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	Y := nextInt()
	//N := 9
	//Y := 45000
	slice := []xyz{}

	L: 
	for i := 0; i < N+1; i++ {
		x := N - i
		for j := 0; j < x+1; j++ {
			z := N - i - j
			if 10000*i+5000*j+1000*z == Y {
				slice = append(slice, xyz{
					x: i,
					y: j,
					z: z,
				})
				break L
			}

		}
	}

	if len(slice) == 0 {
		fmt.Printf("-1 -1 -1")
	} else {
		x := slice[0].x
		y := slice[0].y
		z := slice[0].z

		fmt.Printf("%d %d %d", x, y, z)
	}
}
