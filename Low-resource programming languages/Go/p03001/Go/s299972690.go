package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	ins := strings.Split(readLine(), " ")
	wi, _ := strconv.Atoi(ins[0])
	hi, _ := strconv.Atoi(ins[1])
	xi, _ := strconv.Atoi(ins[2])
	yi, _ := strconv.Atoi(ins[3])

	w := float64(wi)
	h := float64(hi)
	x := float64(xi)
	y := float64(yi)

	xh := math.Min(x*h, (w-x)*h)
	yw := math.Min(y*w, (h-y)*w)

	if xh == yw {
		if w == h {
			fmt.Println(w*h/2, 1)
		} else {
			fmt.Println(w*h/2, 0)
		}
	} else if xh > yw {
		fmt.Println(xh, 0)
	} else if yw > xh {
		fmt.Println(yw, 0)
	}
}
