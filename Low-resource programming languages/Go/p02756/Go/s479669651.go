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

	rf := false
	q := scanInt()
	for i := 0; i < q; i++ {
		t := scanInt()
		if t == 1 {
			rf = !rf
		} else {
			f := scanInt()
			c := scanString()
			if rf {
				f = 3 - f
			}
			if f == 1 {
				qu.PushFront(c)
			} else {
				qu.PushBack(c)
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	for qu.Len() > 0 {
		var x string
		if rf {
			x = qu.Remove(qu.Back()).(string)
		} else {
			x = qu.Remove(qu.Front()).(string)
		}
		wr.WriteString(x)
	}
	wr.WriteString("\n")
	wr.Flush()
}
