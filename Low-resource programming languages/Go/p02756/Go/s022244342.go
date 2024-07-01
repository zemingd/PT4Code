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
		qu.PushBack(string(r))
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
					qu.PushFront(c)
				} else {
					qu.PushBack(c)
				}
			} else {
				if d {
					qu.PushBack(c)
				} else {
					qu.PushFront(c)
				}
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	for qu.Len() > 0 {
		var x string
		if d {
			x = qu.Remove(qu.Front()).(string)
		} else {
			x = qu.Remove(qu.Back()).(string)
		}
		wr.WriteString(x)
	}
	wr.WriteString("\n")
	wr.Flush()
}
