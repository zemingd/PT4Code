package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := readInt()

	m := make(map[int]map[int]struct{})

	l := make([]int, n)
	for i := range l {
		l[i] = readInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(l)))

	uniqueL := make([]int, 0)
	mm := make(map[int]struct{})
	for i := range l {
		if _, ok := mm[l[i]]; !ok {
			uniqueL = append(uniqueL, l[i])
			mm[l[i]] = struct{}{}
		}
	}

	vToIdx := make(map[int]int)
	for i := range uniqueL {
		vToIdx[uniqueL[i]] = i
	}

	// fmt.Println(uniqueL)

	ans := 0
	for i := range l {

		for j := i + 1; j < n-1; j++ {
			if l[j+1] <= l[i]-l[j] {
				break
			}
			if _, ok := m[l[i]][l[j]]; ok {
				continue
			}

			if _, ok := m[l[i]]; !ok {
				m[l[i]] = make(map[int]struct{})
			}
			m[l[i]][l[j]] = struct{}{}

			s := vToIdx[l[j+1]]
			// fmt.Println(l[i], l[j])
			e := upperBound(uniqueL, s, len(uniqueL)-1, l[i]-l[j])

			// fmt.Printf("\t%v:%v, %v:%v  %v\n", s, uniqueL[s], e, uniqueL[e], uniqueL[s:e+1])

			ans += e - s + 1
		}
	}

	fmt.Println(ans)
}

func upperBound(a []int, l, r, v int) int {
	for l < r {
		if a[r] > v {
			return r
		}
		m := (l + r) / 2
		if a[m] > v {
			if l == m {
				return l
			}
			l = m
		} else {
			r = m - 1
		}
	}
	return l
}

// sort ------------------------------------------------------------

type xxx struct {
	x int
}

type sortArray []xxx

func (s sortArray) Len() int           { return len(s) }
func (s sortArray) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortArray) Less(i, j int) bool { return s[i].x < s[j].x }

// -----------------------------------------------------------------

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
	}
	return f1, f2
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sum(a []int) int {
	var ret int
	for i := range a {
		ret += a[i]
	}
	return ret
}

func sumFloat64(a []float64) float64 {
	var ret float64
	for i := range a {
		ret += a[i]
	}
	return ret
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcm(m, n int) int {
	return m / gcd(m, n) * n
}
