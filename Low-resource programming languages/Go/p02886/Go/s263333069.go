package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readInts(stdin *bufio.Scanner) []int {
	stdin.Scan()
	text := stdin.Text()
	ss := strings.Split(text, " ")
	ii := make([]int, len(ss))
	for j, s := range ss {
		i, _ := strconv.Atoi(s)
		ii[j] = i
	}
	return ii
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	var z []int
	readInts(stdin)
	z = readInts(stdin)
	s := 0
	lz := len(z)
	for i := 0; i < lz-1; i++ {
		for j := i+1; j < lz; j++ {
			s += z[i] * z[j]
		}
	}
	fmt.Println(s)
}