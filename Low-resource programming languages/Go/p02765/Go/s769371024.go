package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N, R := readInt(), readInt()
	if N < 10 {
		fmt.Println(R + 100*(10-N))
	} else {
		fmt.Println(R)
	}
}
