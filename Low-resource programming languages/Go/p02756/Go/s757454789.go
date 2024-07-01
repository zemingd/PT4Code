package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scan(&s)
	ls := list.New()
	for _, r := range s {
		ls.PushBack(string(r))
	}
	rv := false
	var q int
	fmt.Scan(&q)
	for i := 0; i < q; i++ {
		var t int
		fmt.Scan(&t)
		switch t {
		case 1:
			rv = !rv
		case 2:
			var (
				f int
				c string
			)
			fmt.Scan(&f, &c)
			if rv {
				f = 3 - f
			}
			if f == 1 {
				ls.PushFront(c)
			} else {
				ls.PushBack(c)
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	if rv {
		for e := ls.Back(); e != nil; e = e.Prev() {
			wr.WriteString(e.Value.(string))
		}
	} else {

		for e := ls.Front(); e != nil; e = e.Next() {
			wr.WriteString(e.Value.(string))
		}
	}
	wr.WriteString("\n")
	wr.Flush()
}
