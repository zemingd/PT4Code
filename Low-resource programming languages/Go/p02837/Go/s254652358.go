package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%d\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) int {
	var n int
	fmt.Fscanf(r, "%d", &n)
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)
	testimonies := []testimony{}
	for i := 0; i < n; i++ {
		testimonies = append(testimonies, parseTestimony(sc))
	}
	max := uint32(0)
	for i := 0; i < 1<<uint32(n); i++ {
		if checkAllHornest(n, uint32(i), testimonies) {
			numH := onesCount(uint32(i))
			if max < numH {
				max = numH
			}
		}
	}
	return int(max)
}

func checkAllHornest(n int, i uint32, testimonies []testimony) bool {
	flag := 1
	idx := 0
	for idx < n {
		if i&uint32(flag) == uint32(flag) {
			if i&testimonies[idx].l != i {
				return false
			}
			if i|testimonies[idx].h != i {
				return false
			}
		}
		flag <<= 1
		idx++
	}
	return true
}

func onesCount(bits uint32) (num uint32) {
	num = (bits >> 1) & 03333333333
	num = bits - num - ((num >> 1) & 03333333333)
	num = ((num + (num >> 3)) & 0707070707) % 077
	return
}

type testimony struct{ h, l uint32 }

func parseTestimony(sc *bufio.Scanner) (t testimony) {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	t.l, t.h = math.MaxUint32, 0
	for i := 0; i < n; i++ {
		sc.Scan()
		idx, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		horneset, _ := strconv.Atoi(sc.Text())
		if horneset == 0 {
			t.l ^= 1 << uint32(idx-1)
		} else {
			t.h |= 1 << uint32(idx-1)
		}
	}
	return
}

func resolve(n int) int {
	return n
}