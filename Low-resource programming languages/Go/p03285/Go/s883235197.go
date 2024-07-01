package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := IOInitialize()
	N := Int(s)
	for i := 0; i <= 25; i++ {
		for j := 0; j <= 14; j++ {
			if N-((4*i)+(7*j)) == 0 {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}
