package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

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

func minInt64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func maxInt64(a, b int64) int64 {
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

func absInt64(a int64) int64 {
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

func sumInt64(a []int64) int64 {
	var ret int64
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

func gcdInt64(m, n int64) int64 {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcmInt64(m, n int64) int64 {
	return m / gcdInt64(m, n) * n
}

// sort ------------------------------------------------------------

type int64Array []int64

func (s int64Array) Len() int           { return len(s) }
func (s int64Array) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s int64Array) Less(i, j int) bool { return s[i] < s[j] }

type xxx struct {
	x int
}

type sortArray []xxx

func (s sortArray) Len() int           { return len(s) }
func (s sortArray) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortArray) Less(i, j int) bool { return s[i].x < s[j].x }

// -----------------------------------------------------------------

func main() {
	n := readInt()
	k := readInt()
	s := readBytes()
	zero := byte('0')
	one := byte('1')

	z := make([]int, 0)
	o := make([]int, 0)
	if s[0] == zero {
		o = append(o, 0)
	}

	cnt := 0
	for i := range s {
		if s[i] == one {
			cnt++
			if i == len(s)-1 {
				o = append(o, cnt)
			}
		} else {
			if cnt > 0 {
				o = append(o, cnt)
				cnt = 0
			}
		}
	}
	o = append(o, 0)

	cnt = 0
	for i := range s {
		if s[i] == zero {
			cnt++
			if i == len(s)-1 {
				z = append(z, cnt)
			}
		} else {
			if cnt > 0 {
				z = append(z, cnt)
				cnt = 0
			}
		}
	}

	if len(z) <= k {
		fmt.Println(n)
		return
	}

	t1 := 0
	for i := 0; i < k+1; i++ {
		t1 += o[i]
	}
	t0 := 0
	for i := 0; i < k; i++ {
		t0 += z[i]
	}

	ans := t1 + t0
	for i := k; i < len(z); i++ {
		t1 = t1 - o[i-k] + o[i+1]
		t0 = t0 - z[i-k] + z[i]
		ans = max(ans, t1+t0)
	}

	fmt.Println(ans)
}
