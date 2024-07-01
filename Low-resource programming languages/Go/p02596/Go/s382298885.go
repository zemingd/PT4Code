package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	c := 0
	for i := 0; i < k; i++ {
		c = c*10 + 7
		if c%k == 0 {
			fmt.Println(i + 1)
			return
		}
		c %= k
	}
	fmt.Println(-1)
}

func nextInt() int {
	i, err := strconv.Atoi(nextWord())
	pnc(err)
	return i
}

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
