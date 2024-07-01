package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func isPrefixLunlun(i int) bool {
	x := strconv.Itoa(i)
	l, _ := strconv.Atoi(string(x[0]))
	r, _ := strconv.Atoi(string(x[1]))
	diff := r - l
	if -1 <= diff && diff <= 1 {
		return true
	} else {
		return false
	}
}

func isLunlun(i int) (int, bool) {
	x := strconv.Itoa(i)
	for index := 1; index < len(x); index++ {
		l, _ := strconv.Atoi(string(x[index-1]))
		r, _ := strconv.Atoi(string(x[index]))
		diff := r - l
		if -1 <= diff && diff <= 1 {
			continue
		} else {
			return -1, false
		}
	}
	return i, true
}

func roundUp(i int) int {
	str := strconv.Itoa(i)
	base := int(math.Pow(float64(10), float64(len(str)-1)))
	i = i - i%base + base
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	var count int
	var lunlun int
	for i := 0; count <= k; {
		if 10 <= i && i%10 != 0 && isPrefixLunlun(i) == false {
			reset := roundUp(i)
			i = reset
			continue
		}
		if num, ok := isLunlun(i); ok {
			count++
			lunlun = num
		}
		i++
	}
	fmt.Println(lunlun)
}
