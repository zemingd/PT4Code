package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"sort"
)

func nextLine(r *bufio.Reader) string {
	var buf []byte
	for {
		line, isPrefix, err := r.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, line...)
		if !isPrefix {
			break
		}
	}
	return string(buf)
}

func nextStr(s *bufio.Scanner) string {
	s.Scan()
	ref := s.Bytes()
	cp := make([]byte, len(ref))
	copy(cp, ref)
	return string(cp)
}

func nextInt(s *bufio.Scanner) int {
	n, err := strconv.Atoi(nextStr(s))
	if err != nil {
		panic(err)
	}
	return n
}

func nextInt64(s *bufio.Scanner) int64 {
	n, err := strconv.ParseInt(nextStr(s), 0, 64)
	if err != nil {
		panic(err)
	}
	return n
}

func main() {
	// r := bufio.NewReader(os.Stdin)
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	N := nextInt(s)
	K := nextInt(s)
	nums := make([]int, N)
	for i := 0; i < N; i++ {
		nums[i] = nextInt(s)
	}
	sort.Ints(nums)
	sum := 0
	for i := 0; i < K; i++ {
		sum += nums[i]
	}
	fmt.Println(sum)
}
