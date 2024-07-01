package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	N, H := getInt(), getInt()
	a := make([]int, N)
	b := make([]int, N)
	maxA := 0
	minBA := 0
	posB := 0
	for i := 0; i < N; i++ {
		a[i], b[i] = getInt(), getInt()
		if a[i] > maxA {
			maxA = a[i]
			minBA = b[i]
			posB = i
		} else if a[i] == maxA {
			if minBA > b[i] {
				minBA = b[i]
				posB = i
			}
		}
	}
	sort.Ints(a)
	b = append(b[:posB], b[posB+1:]...)
	sort.Ints(b)

	ans := 0
	posB = len(b) - 1
	for posB >= 0 && b[posB] > maxA {
		if H <= minBA {
			H -= minBA
			break
		}
		H -= b[posB]
		posB--
		ans++
		if H <= 0 {
			break
		}
	}

	if H <= minBA {
		ans++
	} else {
		n := (H - minBA + maxA - 1) / maxA
		ans += n + 1
	}
	out(ans)
}
