package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := ReadInt()

	h := make(map[int]bool)
	for i := 0; i < N; i++ {
		A := ReadInt()
		if h[A] {
			delete(h, A)
		} else {
			h[A] = true
		}
	}

	fmt.Println(len(h))
}

var sc = bufio.NewScanner(os.Stdin)

func init()        { sc.Buffer(make([]byte, 256), 1e9); sc.Split(bufio.ScanWords) }
func Read() string { sc.Scan(); return sc.Text() }

func ReadInt() int {
	v, e := strconv.Atoi(Read())
	if e != nil {
		panic(e.Error())
	}
	return v
}
