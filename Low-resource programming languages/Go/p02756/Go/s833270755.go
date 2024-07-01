package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	Q := ReadInt()
	reverse := false
	head := ""
	tail := ""
	for i := 0; i < Q; i++ {
		q := ReadInt()
		if q == 1 {
			reverse = !reverse
		} else {
			f, c := ReadInt(), ReadString()
			if reverse {
				if f == 1 {
					f = 2
				} else {
					f = 1
				}
			}
			if f == 1 {
				head += c
			} else {
				tail += c
			}
		}
	}
	head = toReverse(head)
	S = head + S + tail
	if reverse {
		S = toReverse(S)
	}
	fmt.Println(string(S))
}

func toReverse(s string) string {
	out := []byte(s)
	i := 0
	j := len(s) - 1
	for i < j {
		out[i], out[j] = out[j], out[i]
		i++
		j--
	}
	return string(out)
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
