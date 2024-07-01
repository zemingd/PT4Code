package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewScanner(os.Stdin)
	b := make([]byte, 100010)
	r.Buffer(b, 1000010)
	r.Scan()
	var s string
	s = r.Text()
	a := make([]int, len(s))
	var rcnt int
	for i := 0; i < len(s)-1; i++ {
		rcnt++
		if s[i:i+1] == "R" && s[i+1:i+2] == "L" {
			lcnt := 1
			for j := 1; i+1+j <= len(s)-1; j++ {
				if i+1+j+1 == len(s) {
					lcnt++
					break
				}
				if s[i+1+j:i+1+j+1] == "R" {
					break
				}
				lcnt++
			}
			fmt.Printf("R:%d L:%d rcnt:%d lcnt:%d\n", i, i+1, rcnt, lcnt)

			if (rcnt+lcnt)%2 == 0 {
				w := (rcnt + lcnt) / 2
				a[i] = w
				a[i+1] = w
			} else {
				if rcnt > lcnt {
					if rcnt%2 == 0 {
						a[i] = lcnt
						a[i+1] = rcnt
					} else {
						a[i] = rcnt
						a[i+1] = lcnt
					}
				} else {
					if lcnt%2 == 0 {
						a[i] = lcnt
						a[i+1] = rcnt
					} else {
						a[i] = rcnt
						a[i+1] = lcnt
					}
				}
			}
			i += lcnt
			rcnt = 0
			lcnt = 0
		}
	}
	fmt.Println(a)

}