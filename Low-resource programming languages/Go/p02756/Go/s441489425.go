package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	sc.Split(bufio.ScanWords)
	S := nextString()
	Q := nextInt()

	head := list.New()
	tail := list.New()
	reversed := false

	for i := 0; i < Q; i++ {
		op := nextInt()

		if op == 1 {
			reversed = !reversed
			continue
		}

		edge := nextInt()
		char := nextString()

		if edge == 1 {
			if reversed {
				tail.PushBack(char)
			} else {
				head.PushFront(char)
			}
		} else {
			if reversed {
				head.PushFront(char)
			} else {
				tail.PushBack(char)
			}
		}
	}

	heads := make([]string, head.Len())
	tails := make([]string, tail.Len())

	c := 0
	for v := head.Front(); v != nil; v = v.Next() {
		heads[c] = v.Value.(string)
		c++
	}
	c = 0
	for v := tail.Front(); v != nil; v = v.Next() {
		tails[c] = v.Value.(string)
		c++
	}

	ans := strings.Join(heads, "") + S + strings.Join(tails, "")
	if reversed {
		ans = reverse(ans)
	}

	fmt.Println(ans)
}
