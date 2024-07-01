package main

import (
	"bufio"
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
	s, q := scanString(), scanInt()

	l := make([]byte, 0, q)
	r := make([]byte, 0, q)
	d := true
	for i := 0; i < q; i++ {
		t := scanInt()
		if t == 1 {
			d = !d
		} else {
			f, c := scanInt(), scanString()
			if f == 1 {
				if d {
					l = append(l, c[0])
				} else {
					r = append(r, c[0])
				}
			} else {
				if d {
					r = append(r, c[0])
				} else {
					l = append(l, c[0])
				}
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	if d {
		for i := len(l) - 1; i >= 0; i-- {
			wr.WriteString(string(l[i]))
		}
		wr.WriteString(s)
		wr.WriteString(string(r))
	} else {
		for i := len(r) - 1; i >= 0; i-- {
			wr.WriteString(string(r[i]))
		}
		for i := len(s) - 1; i >= 0; i-- {
			wr.WriteString(string(s[i]))
		}
		wr.WriteString(string(l))
	}
	wr.WriteString("\n")
	wr.Flush()
}
