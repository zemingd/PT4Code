package main

import (
	"bufio"
	"fmt"
	"math/bits"
	"os"
)

func main() {
	N, M := ReadInt(), ReadInt()
	s := 1<<M - 1
	for i := 0; i < N; i++ {
		K := ReadInt()
		v := 0
		for j := 0; j < K; j++ {
			v |= 1 << (ReadInt() - 1)
		}
		s &= v
	}
	fmt.Println(bits.OnesCount(uint(s)))
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
