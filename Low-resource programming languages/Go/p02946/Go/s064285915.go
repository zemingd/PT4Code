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

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	x := nextInt()
	for i := x - k + 1; i < x+k; i++ {
		if i >= -1000000 && i <= 1000000 {
			fmt.Print(i)
			if i != x+k-1 {
				fmt.Print(" ")
			}
		}
	}
}
