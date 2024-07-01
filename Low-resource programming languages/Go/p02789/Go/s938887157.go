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
	n, m := input[0], input[1]

	if(n == m){
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
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