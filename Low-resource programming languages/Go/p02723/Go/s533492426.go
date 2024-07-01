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
	s := readString()

	if s[2] == s[3] || s[4] == s[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
