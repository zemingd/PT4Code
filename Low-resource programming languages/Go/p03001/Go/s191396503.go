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
	w := nextInt()
	h := nextInt()
	x := nextInt()
	y := nextInt()

	area := float64(w) * float64(h) / 2.0
	fmt.Printf("%v ", area)
	if float64(x) == float64(w)/2 && float64(y) == float64(h)/2 {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
