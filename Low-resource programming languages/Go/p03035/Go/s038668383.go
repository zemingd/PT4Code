package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
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
	sc.Split(bufio.ScanWords)

	A, B := nextInt(), nextInt()

	switch {
	case A >= 13: fmt.Println(B)
	case A <= 5: fmt.Println(0)
	default: fmt.Println(B/2)
	}
}
