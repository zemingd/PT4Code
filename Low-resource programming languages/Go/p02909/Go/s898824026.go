package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	r := []string{
		"Sunny",
		"Cloudy",
		"Rainy",
	}
	s := 0
	for i := 0; i < len(r); i++ {
		if r[i] == S {
			s = i
			break
		}
	}
	fmt.Println(r[(s+1)%3])
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) (a []int) {
	for i := 0; i < n; i++ {
		a = append(a, ReadInt())
	}
	return
}
