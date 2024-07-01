package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	/*/TODO:!!!!!!!テスト用!!!!!!!!!
	sc = bufio.NewScanner(strings.NewReader(`
	8
	ABABBABA
										`))
	//TODO:!!!!!!!テスト用!!!!!!!!!*/

	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!caution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	//fmt.Fprintln(out, "[DEBUG]", time.Now())

	h := nextInt()
	w := nextInt()
	ch := nextInt()
	cw := nextInt()
	dh := nextInt()
	dw := nextInt()
	s := make([]string, h)
	dis := make([][]int, h)
	for i := 0; i < len(s); i++ {
		s[i] = next()
		dis[i] = make([]int, w)
		for j := 0; j < w; j++ {
			dis[i][j] = -1
		}
	}

	dis[ch-1][cw-1] = 0
	mq := [][]int{{ch - 1, cw - 1}}
	for len(mq) > 0 {
		wq := [][]int{} //動いた後
		for len(mq) > 0 {
			m := mq[0]
			wq = append(wq, m)
			//上
			if m[0] > 0 && s[m[0]-1][m[1]] == '.' && dis[m[0]-1][m[1]] == -1 {
				mq = append(mq, []int{m[0] - 1, m[1]})
				dis[m[0]-1][m[1]] = dis[m[0]][m[1]]
			}
			//下
			if m[0] < h-1 && s[m[0]+1][m[1]] == '.' && dis[m[0]+1][m[1]] == -1 {
				mq = append(mq, []int{m[0] + 1, m[1]})
				dis[m[0]+1][m[1]] = dis[m[0]][m[1]]
			}
			//左
			if m[1] > 0 && s[m[0]][m[1]-1] == '.' && dis[m[0]][m[1]-1] == -1 {
				mq = append(mq, []int{m[0], m[1] - 1})
				dis[m[0]][m[1]-1] = dis[m[0]][m[1]]
			}
			//右
			if m[1] < w-1 && s[m[0]][m[1]+1] == '.' && dis[m[0]][m[1]+1] == -1 {
				mq = append(mq, []int{m[0], m[1] + 1})
				dis[m[0]][m[1]+1] = dis[m[0]][m[1]]
			}
			mq = mq[1:]
		}
		// for i := 0; i < len(s); i++ {
		// 	fmt.Fprintln(out, "[DEBUG]", dis[i])
		// }

		nmq := [][]int{} //次に使うキュー
		for len(wq) > 0 {
			p := wq[0]

			for ph := maxInt(0, p[0]-2); ph <= minInt(h-1, p[0]+2); ph++ {
				for pw := maxInt(0, p[1]-2); pw <= minInt(w-1, p[1]+2); pw++ {
					if absInt(p[0]-ph)+absInt(p[1]-pw) <= 1 || s[ph][pw] != '.' || dis[ph][pw] != -1 {
						continue
					}

					nmq = append(nmq, []int{ph, pw})
					dis[ph][pw] = dis[p[0]][p[1]] + 1
				}
			}
			wq = wq[1:]
		}
		mq = nmq
	}

	ans := dis[dh-1][dw-1]

	//fmt.Fprintln(out, "[DEBUG]", a)
	fmt.Fprintln(out, ans)

}

// 挿入ソート配列
type slist struct {
	l []int
}

func makeSlist() slist {
	return slist{[]int{}}
}

func (s *slist) add(a int) {
	pos := sort.Search(len(s.l), func(i int) bool { return s.l[i] >= a })
	if pos < len(s.l) {
		s.l = append(s.l[:pos+1], s.l[pos:]...)
		s.l[pos] = a
	} else {
		s.l = append(s.l, a)
	}
}
func (s slist) contains(a int) bool {
	pos := sort.Search(len(s.l), func(i int) bool { return s.l[i] >= a })
	return pos < len(s.l) && s.l[pos] == a
}

//------------------------------------------------------------------------------

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

func printArray(a []int) {
	for i := 0; i < len(a); i++ {
		if i >= 1 {
			fmt.Fprint(out, " ")
		}
		fmt.Fprint(out, a[i])
	}
	fmt.Fprintln(out)
}

func absInt(x int) int {
	return int(math.Abs(float64(x)))
}
func minInt(x, y int) int {
	if x < y {
		return x
	}
	return y
}
func maxInt(x, y int) int {
	if x > y {
		return x
	}
	return y
}
func sign(x int) int {
	if x == 0 {
		return 0
	}
	if x > 0 {
		return 1
	}
	return -1
}
func log10(x int) float64 {
	return math.Log10(float64(x))
}
func divCeil(shi, bo int) int {
	ans := shi / bo
	if shi%bo != 0 {
		ans++
	}
	return ans
}
