package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type apple struct {
	d int
	c string
}
type apples []apple

func (a apples) Len() int {
	return len(a)
}
func (a apples) Less(i, j int) bool {
	return a[i].d < a[j].d
}
func (a apples) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	// var X, Y, A, B, C int
	X := nextInt(sc)
	Y := nextInt(sc)
	A := nextInt(sc)
	B := nextInt(sc)
	C := nextInt(sc)
	aps := make([]apple, A+B+C)
	for i := 0; i < A; i++ {
		aps[i].d = nextInt(sc)
		aps[i].c = "R"
	}
	for i := A; i < A+B; i++ {
		aps[i].d = nextInt(sc)
		aps[i].c = "G"
	}
	for i := A + B; i < A+B+C; i++ {
		aps[i].d = nextInt(sc)
		aps[i].c = "W"
	}
	sort.Sort(sort.Reverse(apples(aps)))
	// fmt.Println(aps)
	ans := 0
	for i := 0; i < len(aps) && (X > 0 || Y > 0); i++ {
		if aps[i].c == "R" && X > 0 {
			// fmt.Printf("Pickup %s on %d, d=%d\n", aps[i].c, i, aps[i].d)
			X--
			ans += aps[i].d
		} else if aps[i].c == "G" && Y > 0 {
			// fmt.Printf("Pickup %s on %d, d=%d\n", aps[i].c, i, aps[i].d)
			Y--
			ans += aps[i].d
		}
		if aps[i].c == "W" && C > 0 && (X+Y) > 0 {
			C--
			if X >= Y {
				// fmt.Printf("Pickup %s on %d, d=%d, use as R\n", aps[i].c, i, aps[i].d)
				X--
			} else {
				// fmt.Printf("Pickup %s on %d, d=%d, use as G\n", aps[i].c, i, aps[i].d)
				Y--
			}
			ans += aps[i].d
		}
		// fmt.Println("i", i)
	}
	fmt.Println(ans)
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}
