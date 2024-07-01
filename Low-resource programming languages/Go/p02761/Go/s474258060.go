package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func create(size int, conds map[int]int) (int, error) {
	base := []rune(strings.Repeat("0", size))
	for k, v := range conds {
		base[k-1] = rune(v + 48)
	}
	if _, exist := conds[1]; base[0] != '0' && !exist {
		base[0] = '1'
	}
	if base[0] != '0' {
		return strconv.Atoi(string(base))
	}
	return 0, errors.New("No")
}

func main() {
	n, m := nextInt(), nextInt()

	conds := map[int]int{}

	dup := false

	for i := 0; i < m; i++ {
		s := nextInt()
		c := nextInt()
		if v, exist := conds[s]; exist && c != v {
			dup = true
		}
		conds[s] = c
	}

	var r int
	if dup {
		r = -1
	} else {
		rr, err := create(n, conds)
		if err != nil {
			r = -1
		} else {
			r = rr
		}
	}
	fmt.Println(r)
}
