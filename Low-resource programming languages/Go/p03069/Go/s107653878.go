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

	for _, v := range spans {
		fmt.Printf("%#v ", v)
	}

	w2b := 0
	for i, v := range spans {
		if i == 0 && v.val == '.' {
			continue
		}
		if v.val == '.' {
			w2b += v.len()
		}
	}

	b2w := 0
	for i, v := range spans {
		if i == n - 1 && v.val == '#' {
			continue
		}
		if v.val == '#' {
			b2w += v.len()
		}
	}
	if w2b < b2w {
		fmt.Println(w2b)
	} else {
		fmt.Println(b2w)
	}
}

/*
...###..#####..###..#...###
 */