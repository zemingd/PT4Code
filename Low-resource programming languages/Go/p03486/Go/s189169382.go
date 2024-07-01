package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	strByte := make([]byte, 200)
	s := readString(reader, strByte)
	t := readString(reader, strByte)
	mins, maxt := "z", "a"
	for _, str := range s {
		mins = min(mins, str)
	}
	for _, str := range t {
		maxt = max(maxt, str)
	}
	if mins < maxt {
		fmt.Println("Yes")
	} else if mins == maxt && len(s) < len(t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func readString(r *bufio.Reader, b []byte) []string {
	n, _ := r.Read(b)
	s := make([]string, n)
	for i := 0; i < n; i++ {
		s[i] = string(b[i])
	}
	return s[:len(s)-1]
}

func max(a, b string) string {
	if a > b {
		return a
	}
	return b
}

func min(a, b string) string {
	if a < b {
		return a
	}
	return b
}