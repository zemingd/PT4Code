// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Jan  6 00:24:03 2019
//
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	var N int
	fmt.Scan(&N)
	as := make([]int, N)
	bs := make([]int, N)
	cs := make([]int, N)

	for i := range as {
		as[i] = nextInt()
	}
	sort.Ints(as)
	for i := range bs {
		bs[i] = nextInt()
	}
	sort.Ints(bs)
	for i := range cs {
		cs[i] = nextInt()
	}
	sort.Ints(cs)

	arr := make([]int, N)
	for i := range bs {
		b := bs[i]
		n := sort.Search(len(cs), func(i int) bool {
			return b < cs[i]
		})
		arr[i] = len(cs) - n
	}
	for i := range arr {
		if i+1 < len(arr) {
			arr[i+1] += arr[i]
		}
	}

	ans := 0
	for i := range as {
		a := as[i]
		n := sort.Search(len(bs), func(i int) bool {
			return a < bs[i]
		})
		if n == len(bs) {
			continue
		}

		if n == 0 {
			ans += arr[len(arr)-1]
		} else {
			ans += arr[len(arr)-1] - arr[n-1]
		}
	}
	fmt.Println(ans)
}
