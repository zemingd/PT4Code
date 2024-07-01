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
	n, k := readInt(), readInt()

	count := 0
	for {
		if n == 0 {
			break
		}
		n = n / k
		count++
	}
	fmt.Println(count)
}
