package main

import (
	"fmt"
	"os"
)

const (
	MIN = -1000000
	MAX = 1000000
)

func main(){
	var k, x int
	fmt.Fscanf(os.Stdin, "%d %d", &k, &x)
	min := x - (k -1)
	max := x + (k -1)
	if min < MIN {
		min = MIN
	}

	if max > MAX {
		max = MAX
	}
	for i := min; i <= max; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Print("\n")
}
