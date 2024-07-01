package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N uint32

	fmt.Scanf("%d\n", &N)
	l := uint32(1)
	cached := uint32(0)
	r := uint32(1e9)
	for l < r {
		p := (l + r) / 2
		cnt := cached
		for i := l; i <= p; i++ {
			if i < 10 {
				cnt++
			} else {
				si := []rune(fmt.Sprint(i))
				ok := true
				for i := 0; i < len(si)-1; i++ {
					a, _ := strconv.Atoi(string(si[i]))
					b, _ := strconv.Atoi(string(si[i+1]))
					x := a - b
					if x < 0 {
						x = -x
					}
					if x > 1 {
						ok = false
						break
					}
				}
				if ok {
					cnt++
				}
			}
			if cnt > N {
				r = p
				break
			}

		}
		if cnt >= N {
			r = p
		} else {
			cached = cnt
			l = p + 1
		}
	}
	fmt.Println(l)
}
