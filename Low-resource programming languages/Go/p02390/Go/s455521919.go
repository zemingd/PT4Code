package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	x := n / 3600
	y := n % 3600 / 60
	z := n % 3600 % 60
	str := fmt.Sprintf("%d:%d:%d", x, y, z)
	fmt.Println(str)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

