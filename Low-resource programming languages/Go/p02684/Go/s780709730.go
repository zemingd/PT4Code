package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := NewScanner()
	n, k := scanner.NextInt(), scanner.NextInt64()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = scanner.NextInt() - 1
	}
	steps := make([]int, n)
	pos, num := 0, 1
	for ; steps[pos] == 0; pos = as[pos] {
		steps[pos] = num
		num++
	}

	p, q := steps[pos]-1, num-steps[pos]
	if k > int64(p) {
		res := (k - int64(p)) % int64(q)
		ans := 0
		for i := 0; i < int(res)+p; i++ {
			ans = as[ans]
		}
		fmt.Println(ans + 1)
	} else {
		ans := 0
		for i := 0; int64(i) < k; i++ {
			ans = as[ans]
		}
		fmt.Println(ans + 1)
	}
}

type Scanner struct {
	scanner *bufio.Scanner
}

func NewScanner() *Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return &Scanner{s}
}

func (s *Scanner) NextWord() string {
	if !s.scanner.Scan() {
		log.Fatal("failed to find the next word")
	}
	return s.scanner.Text()
}

func (s *Scanner) NextInt() int {
	str := s.NextWord()
	i, err := strconv.Atoi(str)
	if err != nil {
		log.Fatalf("failed to parse %s to int", str)
	}
	return i
}

func (s *Scanner) NextInt64() int64 {
	str := s.NextWord()
	i, err := strconv.ParseInt(str, 10, 64)
	if err != nil {
		log.Fatalf("failed to parse %s to int64", str)
	}
	return i
}
