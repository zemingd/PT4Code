package main

import "fmt"
import "bufio"
import "os"
import "strconv"
import "sort"

var _sw = bufio.NewScanner(os.Stdin)

type Pt struct {
	x int
	y int
}

func main() {
	var H, W int
	fmt.Scan(&H, &W)

	C := make([][]bool, H)
	B := []Pt{}
	for y := range C {
		var s string
		fmt.Scan(&s)

		C[y] = make([]bool, W)
		for x := range C[y] {
			C[y][x] = s[x] == '#'
			if C[y][x] {
				B = append(B, Pt{x, y})
			}
		}
	}

	cnt := 0
	done := len(B)
	next := append([]Pt{}, B...)
	for {
		if done == H*W {
			break
		}
		next_ := []Pt{}
		for _, b := range next {
			for _, d := range []Pt{{-1, 0}, {+1, 0}, {0, -1}, {0, +1}} {
				p := Pt{Bounded(0, b.x+d.x, W-1), Bounded(0, b.y+d.y, H-1)}
				if C[p.y][p.x] {
					continue
				}

				C[p.y][p.x] = true
				next_ = append(next_, p)
				done++
			}
		}
		next = next_
		cnt++
	}

	fmt.Println(cnt)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func Bounded(lower, n, upper int) int {
	return Min(upper, Max(lower, n))
}

func SortInts(xs []int) {
	sort.Sort(sort.IntSlice(xs))
}

func ReverseSortInts(xs []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
}
