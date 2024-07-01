package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	s := next()
	t := next()

	pos := [128][]int{}

	for i, e := range s {
		pos[e] = append(pos[e], i)
	}

	var ans int64 = 0
	cur := -1

	gogo := func(next int) {
		if next <= cur {
			ans += int64(len(s) - cur + next)
		} else {
			ans += int64(next - cur)
		}
		cur = next % len(s)
	}

	f := func(e int32) {
		var nxt int
		if pos[e][len(pos[e])-1] <= cur {
			nxt = pos[e][0]
		} else {
			lb := 0
			ub := len(pos[e]) - 1
			for lb != ub {
				mid := (lb + ub) / 2
				if pos[e][mid] > cur {
					ub = mid
				} else {
					lb = mid + 1
				}
			}
			nxt = pos[e][lb]
		}
		gogo(nxt)
	}

	for _, e := range t {
		if len(pos[e]) == 0 {
			fmt.Println(-1)
			return
		}
		f(e)

	}
	fmt.Fprintln(out, ans)
}
