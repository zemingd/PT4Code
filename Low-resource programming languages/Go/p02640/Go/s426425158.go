package main

import (
	"bufio"
	"os"
	"fmt"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	x := nextInt()
	y := nextInt()

	diff := 4 * x - y

	if diff % 2 != 0 {
		fmt.Println("No")
		return
	}

	if diff / 2 > x {
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
	return
}
