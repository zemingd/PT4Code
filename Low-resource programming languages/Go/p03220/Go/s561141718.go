package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
const cff = 0.006

func main() {
	var n, t, a int
	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		s := strings.Split(sc.Text(), " ")
		t, _ = strconv.Atoi(s[0])
		a, _ = strconv.Atoi(s[1])
	}

	hs := []int{}
	if sc.Scan() {
		ss := strings.Split(sc.Text(), " ")
		for _, s := range ss {
			h, _ := strconv.Atoi(s)
			hs = append(hs, h)
		}

		if len(hs) != n {
			os.Exit(1)
		}
	}

	var tmp float64
	var hi int
	for i, h := range hs {
		if i == 0 {
			tmp = math.Abs(float64(a) - (float64(t) - float64(h) * cff))
			hi = i+1
			continue
		}

		tmp2 := math.Abs(float64(a) - (float64(t) - float64(h) * cff))
		if tmp2 < tmp {
			tmp = tmp2
			hi = i+1
			continue
		}
	}

	fmt.Println(hi)
}