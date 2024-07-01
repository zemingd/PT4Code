package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"math"
	"strconv"
)

func Calc(a, b, c, x int64) int64 {
	if x == 0 {
		return 0
	}

	var cnt int64 = 0
	var amax int64 = a
	// 多すぎても困る
	if x/500 < a {
		amax = int64(math.Floor(float64(x) / 500))
	}
	var amin int64 = 0
	// 100円と50円かき集めても足りないなら最低数が決まる
	if b*100+c*50 < x {
		amin = int64(math.Floor(float64(x-b*100-c*50) / 500))
	}
	var bmax int64 = b
	// 多すぎても困る
	if x/100 < b {
		bmax = int64(math.Floor(float64(x) / 100))
	}
	var bmin int64 = 0
	// 500円と50円かき集めても足りないなら最低数が決まる
	if a*500+c*50 < x {
		bmin = int64(math.Floor(float64(x-a*500-c*50) / 100))
	}
	// 多すぎても困る
	var cmax int64 = c
	if x/50 < c {
		cmax = int64(math.Floor(float64(x) / 50))
	}
	var cmin int64 = 0
	// 500円と100円かき集めても足りないなら最低数が決まる
	if a*500+b*100 < x {
		cmin = int64(math.Floor(float64(x-a*500-b*100) / 50))
	}

	for i := amax; i >= amin; i-- {
		for j := bmax; j >= bmin; j-- {
			for k := cmax; k >= cmin; k-- {
				if i*500+j*100+k*50 == x {
					cnt++
				}
			}
		}
	}

	return cnt
}

func Run(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)

	sc.Scan()
	a, _ := strconv.ParseInt(sc.Text(), 0, 64)
	sc.Scan()
	b, _ := strconv.ParseInt(sc.Text(), 0, 64)
	sc.Scan()
	c, _ := strconv.ParseInt(sc.Text(), 0, 64)
	sc.Scan()
	x, _ := strconv.ParseInt(sc.Text(), 0, 64)

	cnt := Calc(a, b, c, x)
	fmt.Fprintf(out, "%d\n", cnt)

	return nil
}

func main() {
	err := Run(os.Stdin, os.Stdout)

	if err != nil {
		log.Fatal(err)
	}
}
