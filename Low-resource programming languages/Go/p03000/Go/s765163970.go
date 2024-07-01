package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	sc.Scan()
	x, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	var sum, cnt int = 0, 1

	for sc.Scan() {
		y, e := strconv.Atoi(sc.Text())
		if e != nil {
			panic(e)
		}
		sum += y
		if sum <= x {
			cnt++
		} else if cnt > n {
			fmt.Println(cnt)
			return
		} else {
			fmt.Println(cnt)
			return
		}
	}
}