package main

import (
	"bufio"
	"container/list"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	iv, _ := strconv.Atoi(scanString())
	return iv
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	s := scanString()
	qu := list.New()
	for _, r := range s {
		qu.PushBack(r)
	}

	d := true
	q := scanInt()
	for i := 0; i < q; i++ {
		t := scanInt()
		if t == 1 {
			d = !d
		} else {
			f, c := scanInt(), scanString()
			if f == 1 {
				if d {
					qu.PushFront(rune(c[0]))
				} else {
					qu.PushBack(rune(c[0]))
				}
			} else {
				if d {
					qu.PushBack(rune(c[0]))
				} else {
					qu.PushFront(rune(c[0]))
				}
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	for qu.Len() > 0 {
		var x rune
		if d {
			x = qu.Remove(qu.Front()).(rune)
		} else {
			x = qu.Remove(qu.Back()).(rune)
		}
		wr.WriteString(string(x))
	}
	wr.WriteString("\n")
	wr.Flush()
}
