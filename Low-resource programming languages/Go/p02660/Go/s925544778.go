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
	n := scanner.NextInt64()
	if n == 1 {
		fmt.Println(0)
		return
	}
	r := 1
	for ; int64(r*r) <= n; r++ {
	}
	ms := make([]bool, r)
	count := 0
	for i := 2; i < len(ms); i++ {
		if ms[i] {
			continue
		}
		for j := 1; i*j < len(ms); j++ {
			ms[i*j] = true
		}
		for j := i; j < len(ms); j *= i {
			if n%int64(j) == 0 {
				n /= int64(j)
				count++
			}
		}
	}
	if count == 0 {
		// Nは素数
		fmt.Println(1)
	} else {
		fmt.Println(count)
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
