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
	mon = 100

	for {
		if x <= mon {
			break
		}
		mon += mon / 100
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