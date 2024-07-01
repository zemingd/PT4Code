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
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	ar := make([]int, n)
	br := make([]int, n)
	cr := make([]int, n)
	for i := range ar {
		ar[i] = nextInt()
	}
	sort.Ints(ar)
	for i := range br {
		br[i] = nextInt()
	}
	sort.Ints(br)
	for i := range cr {
		cr[i] = nextInt()
	}
	sort.Ints(cr)

	dr := make([]int, n)
	bi := n - 1
	for i := n - 1; i >= 0; i-- {
		for bi >= 0 {
			if ar[i] < br[bi] {
				dr[bi] = i + 1
				bi--
			} else {
				break
			}
		}
	}
	for i := 1; i < n; i++ {
		dr[i] += dr[i-1]
	}
	er := make([]int, n)
	ci := n - 1
	for i := n - 1; i >= 0; i-- {
		for ci >= 0 {
			if br[i] < cr[ci] {
				er[ci] += dr[i]
				ci--
			} else {
				break
			}
		}
	}
	ans := 0
	for _, v := range er {
		ans += v
	}
	fmt.Println(ans)
}
