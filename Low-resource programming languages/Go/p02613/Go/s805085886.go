package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextStr(s *bufio.Scanner) string {
	s.Scan()
	ref := s.Bytes()
	cp := make([]byte, len(ref))
	copy(cp, ref)
	return string(cp)
}

func nextInt(s *bufio.Scanner) int {
	n, _ := strconv.Atoi(nextStr(s))
	return n
}

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	N := nextInt(s)
	m := make(map[string]int)
	for i := 0; i < N; i++ {
		key := nextStr(s)
		m[key]++
	}

	fmt.Printf("AC x %d\n", m["AC"])
	fmt.Printf("WA x %d\n", m["WA"])
	fmt.Printf("TLE x %d\n", m["TLE"])
	fmt.Printf("RE x %d\n", m["RE"])
}
