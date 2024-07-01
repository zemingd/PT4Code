package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scanln(&n)

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		s = scanner.Text()
		break
	}
	if err := scanner.Err(); err != nil {
		os.Exit(1)
	}
	ss := strings.Split(s, " ")

	a := make([]int, n)
	all := true
	for i := 0; i < n; i++ {
		tmp, _ := strconv.Atoi(ss[i])
		a[i] = tmp
		if i > 0 {
			if a[i] != a[i-1] {
				all = false
			}
		}
	}
	if all {
		fmt.Printf("%+v\n", n/2) // output for debug
		return
	}
	e1 := []int{}
	o1 := []int{}
	emap := map[int]int{}
	omap := map[int]int{}
	for i := 0; i < n; i += 2 {
		emap[a[i]]++
	}

	for i := 1; i < n; i += 2 {
		omap[a[i]]++
	}

	for k, _ := range emap {
		e1 = append(e1, k)
	}
	for k, _ := range omap {
		o1 = append(o1, k)
	}
	sort.Ints(e1)
	sort.Ints(o1)

	ans := 0
	if e1[len(e1)-1] != o1[len(o1)-1] {
		for k, v := range emap {
			if k == e1[len(e1)-1] {
				continue
			}
			ans += v
		}
		for k, v := range omap {
			if k == o1[len(o1)-1] {
				continue
			}
			ans += v
		}
		fmt.Printf("%+v\n", ans) // output for debug
		return
	}

	emax := e1[len(e1)-2]
	omax := o1[len(o1)-2]
	if emax > omax {
		omax = o1[len(o1)-1]
	} else {
		emax = o1[len(o1)-1]
	}

	for k, v := range emap {
		if k == emax {
			continue
		}
		ans += v
	}

	for k, v := range omap {
		if k == omax {
			continue
		}
		ans += v
	}

	fmt.Printf("%+v\n", ans) // output for debug

}
