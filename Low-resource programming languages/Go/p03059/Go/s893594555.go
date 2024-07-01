package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10*10*10*10*10 + 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	a := scanInt(sc)
	b := scanInt(sc)
	t := scanInt(sc)

	var i int
	for ; (i+1)*a <= t; i++ {
	}

	fmt.Printf("%d\n", i*b)
	return

}

func main() {
	check()
}
