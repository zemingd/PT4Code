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

func nextInt64(s *bufio.Scanner) int64 {
	n, err := strconv.ParseInt(nextStr(s), 0, 64)
	if err != nil {
		panic(err)
	}
	return n
}

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	S := nextStr(s)
	T := nextStr(s)

	ans := len(T);
	for i := 0; i + len(T) < len(S); i++ {
		cnt := 0
		for j := 0; j < len(T); j++ {
			if S[i + j] != T[j] {
				cnt++;
			}
		}
		if ans > cnt {
			ans = cnt
		}
	}

	fmt.Println(ans)
}
