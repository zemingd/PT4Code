package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	D, G := ReadInt(), ReadInt()
	p := make([]int, D)
	c := make([]int, D)
	for i := 0; i < D; i++ {
		p[i], c[i] = ReadInt(), ReadInt()
	}
	min := 1 << 62
	for i := 0; i < D; i++ {
		for j := 0; j <= p[i]; j++ {
			for S := 0; S < 1<<D; S++ {
				score := j * (i + 1) * 100
				if j == p[i] {
					score += c[i]
				}
				cnt := j
				for k := 0; k < D; k++ {
					if S>>k&1 == 1 && k != i {
						score += p[k]*(k+1)*100 + c[k]
						cnt += p[k]
					}
				}
				if score >= G {
					if cnt < min {
						min = cnt
					}
				}
			}
		}
	}
	fmt.Println(min)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
