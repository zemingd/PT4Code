package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	input :=  splitAndAtoi(nextLine(stdin))
	a, b := input[0], input[1]

	as := strconv.Itoa(a)
	r1 := loopString(as, b)

	bs := strconv.Itoa(b)
	r2 := loopString(bs, a)

	if (r1 <= r2) {
		fmt.Printf("%s", r1)
	}else {
		fmt.Printf("%s", r2)
	}
}


func loopString(a string, bi int) string {
	r := ""
	for i := 0; i < bi; i++ {
		r += a
	}
	return r
}

func splitAndAtoi(s string) []int {
	ss := strings.Split(s, " ")
	var r []int
	for _, s := range ss {
		i, _ := strconv.Atoi(s)
		r = append(r, i)
	}

	return r
}

func nextNumber(s *bufio.Scanner) int {
	i, _ := strconv.Atoi(nextLine(s))
	return i
}

func nextLine(s *bufio.Scanner) string {
	s.Scan()
	return s.Text()
}

func debug(s string) {
	fmt.Println(s)
}