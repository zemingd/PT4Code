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

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := readInt()
	s := readString()

	count := 1
	for i := 1; i < n; i++ {
		if s[i] != s[i-1] {
			count++
		}
	}
	fmt.Println(count)
}
