package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	s := IOInitialize()
	S := String(s)
	strs := strings.Split(S, "")
	indexA := 0
	indexC := 0
	strInt := []byte(strs[0])[0]
	if strInt != 65 {
		fmt.Println("WA")
		return
	}
	cnt := 0
	for i := 2; i < len(strs)-1; i++ {
		strInt := []byte(strs[i])[0]
		if strInt == 67 {
			cnt++
			indexC = i
		}
	}
	if cnt > 1 || cnt == 0 {
		fmt.Println("WA")
		return
	}

	for i := 0; i < len(strs); i++ {
		if i == indexA || i == indexC {
			continue
		}

		strInt := []byte(strs[i])[0]
		if !(97 <= strInt && strInt <= 122) {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func String(s *bufio.Scanner) string {
	if !s.Scan() {
		panic("scan error")
	}

	return s.Text()
}
