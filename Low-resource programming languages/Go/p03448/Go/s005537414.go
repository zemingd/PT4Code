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

	var cnt int

	a := nextInt()
	b := nextInt()
	c := nextInt()
	x := nextInt()

	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if 500*i+100*j+50*k == x {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
