package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := getStdin()
	T := getStdin()

	ans := 0
	for i := 0; i < len(T); i++ {
		if S[i] != T[i] {
			ans++
		}
	}
	fmt.Printf("%d\n", ans)
}

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func getStdin() string {
	return readLine()
}
func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, _ := sc.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
