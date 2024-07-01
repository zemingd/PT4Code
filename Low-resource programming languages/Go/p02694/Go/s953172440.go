package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	x := scanInt()

	var mon int
	var ans int
	mon = 100.0
	for {
		if mon >= x {
			break
		}
		mon = mon * 101 / 100
		ans++
	}

	fmt.Println(ans)
}

func scanInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}