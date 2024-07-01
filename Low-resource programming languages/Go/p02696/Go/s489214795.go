package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"math/big"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var buff []byte

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buff, bufio.MaxScanTokenSize*1024)
	log.SetFlags(log.Lshortfile)
}

func main() {
	a := nextFloat64()
	b := nextFloat64()
	n := nextFloat64()
	// lo := 0.0
	// hi := n
	ans := 0.0
	var calc func(float64) float64
	calc = func(x float64) float64 {
		tmp := math.Floor(a*x/b) - a*math.Floor(x/b)
		ans = math.Max(ans, tmp)
		return tmp
	}
	var i float64
	for i = 0; i <= n; i++ {
		calc(i)
	}
	// startLo := (lo + lo + hi) / 3.0
	// startHi := (lo + hi + hi) / 3.0
	// for hi-lo < 1.0 {
	// 	loMid := (lo + lo + hi) / 3.0
	// 	hiMid := (lo + hi + hi) / 3.0
	// 	if calc(loMid) > calc(hiMid) {
	// 		hi = math.Floor(hiMid)
	// 	} else {
	// 		lo = math.Floor(loMid)
	// 	}
	// }
	// for i := startHi; i <= n; i++ {
	// 	tmp := calc(i)
	// 	if tmp < ans {
	// 		break
	// 	}
	// }
	// for i := startLo; i >= 0; i-- {
	// 	tmp := calc(i)
	// 	if tmp < ans {
	// 		break
	// 	}
	// }
	fmt.Println(ans)
}

func tle(s string) {
	log.Println("tle", s)
	mod := new(big.Int)
	mod.SetString("2019", 10)
	zero := new(big.Int)
	zero.SetString("0", 10)
	cnt := 0
	for i := 0; i < len(s); i++ {
		for j := i + 1; j <= len(s); j++ {
			ss := s[i:j]
			k := new(big.Int)
			k.SetString(ss, 10)
			z := new(big.Int)
			a := z.Mod(k, mod)
			if a.Cmp(zero) == 0 {
				cnt++
				log.Println(ss)
			}
		}
	}
	fmt.Println(cnt)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat64() float64 {
	sc.Scan()
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInts(n int) (r []int) {
	r = make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

var dy = []int{0, 1, 0, -1}
var dx = []int{1, 0, -1, 0}
var MAX = math.MaxInt32

func pow(a, b int) int {
	return int(math.Pow(float64(a), float64(b)))
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
}
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type Pair struct {
	a, b int
}

type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Pairs) Less(i, j int) bool {
	if p[i].a == p[j].a {
		return p[i].b < p[j].b
	}
	return p[i].a < p[j].a
}
