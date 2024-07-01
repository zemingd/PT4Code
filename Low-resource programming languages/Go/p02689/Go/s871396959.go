package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

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
	N, M := nextInt(), nextInt()
	H := make([]int, N)
	path := make([]string, N)
	for i := 0; i < N; i++ {
		H[i] = nextInt()
	}
	for i := 0; i < M; i++ {
		a := nextInt()
		b := nextInt()
		as := strconv.Itoa(a)
		bs := strconv.Itoa(b)
		if strings.Contains(path[a-1], as) {
			if strings.Contains(path[b-1], bs) {
				continue
			} else {
				path[b-1] += as + " "
			}
		} else {
			path[a-1] += bs + " "
			if strings.Contains(path[b-1], bs) {
				continue
			} else {
				path[b-1] += as + " "
			}
		}

	}

	ans := 0

	for i, l := range path {
		if l == "" {
			ans++
			continue
		} else {
			m := strings.Split(strings.TrimSpace(l), " ")
			bo := true
			// fmt.Println(m)
			for _, p := range m {
				id, _ := strconv.Atoi(p)
				if H[id-1] >= H[i] {
					bo = false
					break
				}
				// fmt.Println(H[id-1], H[i])
			}
			if bo {
				// fmt.Println(i)
				ans++
			}
		}
	}

	fmt.Println(ans)
}
