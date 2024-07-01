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

	sNum := make([][]int, 26)
	for i := 0; i < 26; i++ {
		sNum[i] = make([]int, 0)
	}

	for i, el := range s {
		sNum[el-'a'] = append(sNum[el-'a'], i)
	}

	previous := -1
	count := 0
	for _, tel := range t {
		target := sNum[tel-'a']
		if len(target) == 0 {
			fmt.Println(-1)
			return
		}

		if target[len(target)-1] <= previous {
			count++
			previous = target[0]
		} else {
			previous = bs(target, previous)
		}
	}

	fmt.Println(len(s)*count + previous + 1)
}

func bs(array []int, target int) int {
	l := 0
	r := len(array)
	for l < r {
		cur := array[(l+r)/2]
		if cur > target {
			r = (l + r) / 2
		} else {
			l = (l+r)/2 + 1
		}
	}
	return array[l]
}
