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
	x := nextInt()
	n := 100

	for i:=1; i<999999999999; i++{
		n = int(float64(n) * 1.01)
		if n >= x {
			fmt.Println(i)
			break
		}
	}
}
