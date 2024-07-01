package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

const DIV int = 1e9 + 7

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	N := nextInt()

	S2 := 0
	S := 0

	for i := 0; i < N; i++ {
		a := nextInt()
		S = (S + a) % DIV
		S2 = (S2 + a*a) % DIV
	}

	c := (S*S%DIV - S2) % DIV
	if c%2 == 0 {
		fmt.Println(c / 2)
	} else {
		fmt.Println((c + DIV) / 2)
	}
}
