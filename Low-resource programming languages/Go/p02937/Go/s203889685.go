package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 1e5+1)
	sc.Buffer(buf, 1e5+1)

	sc.Scan()
	s := []byte(sc.Text())

	sc.Scan()
	t := []byte(sc.Text())

	sNum := make(map[byte][]int)
	for i, el := range s {
		if _, ok := sNum[el]; !ok {
			sNum[el] = []int{i}
		} else {
			sNum[el] = append(sNum[el], i)
		}
	}

	previous := -1
	count := 0
	for _, tel := range t {
		target, ok := sNum[tel]
		if !ok {
			fmt.Println(-1)
			return
		}

		if target[len(target)-1] <= previous {
			count += len(s)
			previous = target[len(target)-1]
		} else {
			previous = bs(target, previous)
		}
	}

	fmt.Println(count + previous + 1)
}

func bs(array []int, target int) int {
	l := 0
	r := len(array)
	for l < r {
		cur := array[(l+r)/2]
		if cur > target {
			r = (l+r)/2 - 1
		} else {
			l = (l + r) / 2
		}
	}
	return array[l]
}
