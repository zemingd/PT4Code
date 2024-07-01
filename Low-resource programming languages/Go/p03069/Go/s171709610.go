package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type span struct {
	val   byte
	start int
	end   int
}

func (s *span) len() int {
	return s.end - s.start + 1
}

func main() {
	var n int
	fmt.Scan(&n)
	reader := bufio.NewReader(os.Stdin)
	s, _ := reader.ReadString('\n')
	s = strings.TrimSuffix(s, "\n")

	spans := make([]*span, 0)

	spans = append(spans, &span{s[0], 0, 0})

	for i := 0; i < len(s)-1; i++ {
		if s[i] != s[i+1] {
			tmp := spans[len(spans)-1]
			tmp.end = i
			spans = append(spans, &span{s[i+1], i + 1, i + 1})
		}
	}
	spans[len(spans)-1].end = len(s) - 1

	min := 0xffffffff
	split := 0 // left of split: . right of split: #
	left := 0
	right := 0

	for _, v := range spans {
		if v.val != '#' {
			right += v.len()
		}
	}

	for split = 1; split <= len(spans); split++ {
		v := spans[split-1]
		if v.val == '.' {
			right -= v.len()
		} else {
			left += v.len()
		}
		if right + left < min {
			min = right+left
		}
	}
	fmt.Println(min)
}

/*
...###..#####..###..#...
 */