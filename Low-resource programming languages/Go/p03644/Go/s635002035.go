package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := nextLine()
	first := s[0:1]
	last := s[len(s)-1:]
	num := strconv.Itoa(len(s) - 2)

	fmt.Println(num)

	slice := []string{first, num, last}

	fmt.Println(strings.Join(slice, ""))
}
