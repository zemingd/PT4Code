package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	X := nextInt(s)
	Y := nextInt(s)

	for i := 0; i < X; i++ {
		legs := i * 2 + (X - i) * 4
		if (legs == Y) {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}