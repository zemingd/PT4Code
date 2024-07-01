package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	s := readLine()
	t := readLine()

	if s == t[:len(t)-1] {
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}

func readLine() string {
	if sc.Scan() {
		return sc.Text()
	}
	return "error"
}

func readInt() int {
	n, err := strconv.Atoi(readLine())
	if err != nil {
		panic(err)
	}
	return n
}
