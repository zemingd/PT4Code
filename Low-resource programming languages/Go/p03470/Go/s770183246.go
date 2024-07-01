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
	ans, _ := strconv.Atoi(sc.Text())
	return ans
}

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	al := make(map[int]bool)
	for i := 0; i < n; i++ {
		al[readInt()] = true
	}
	fmt.Println(len(al))
}
