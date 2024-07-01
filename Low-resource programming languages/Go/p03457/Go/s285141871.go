package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"reflect"
	"sort"
	"strconv"
	"strings"
	// "regexp"
)

/* sort */
type pair struct {
	index  int64
	p1, p2 interface{}
}
type pairs []pair

func (slice pairs) Len() int {
	return len(slice)
}

func (slice pairs) Less(i, j int) bool {
	return slice[i].index < slice[j].index
}

func (slice pairs) Swap(i, j int) {
	slice[i], slice[j] = slice[j], slice[i]
}

/* sort */
type Int64Slice []int64

func (slice Int64Slice) Len() int {
	return len(slice)
}

func (slice Int64Slice) Less(i, j int) bool {
	return slice[i] < slice[j]
}

func (slice Int64Slice) Swap(i, j int) {
	slice[i], slice[j] = slice[j], slice[i]
}
func Int64s(a []int64)                    { sort.Sort(Int64Slice(a)) }
func Int64sSliceAreSorted(a []int64) bool { return sort.IsSorted(Int64Slice(a)) }

const (
	initialBufSize = 1e4
	maxBufSize     = 1e8
	INF            = 1e8
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	writer  = bufio.NewWriter(os.Stdout)
	di      = []int64{-1, 0, 1, 0}
	dj      = []int64{0, -1, 0, 1}
)

type pos struct {
	time int64
	x, y int64
}

func main() {
	buf := make([]byte, initialBufSize)
	scanner.Buffer(buf, maxBufSize)
	scanner.Split(bufio.ScanWords)
	N := readInt()
	routes := make([]pos, N)
	for i := int64(0); i < N; i++ {
		routes[i] = pos{readInt(), readInt(), readInt()}
	}
	curpos := pos{time: 0, x: 0, y: 0}
	for i := int64(0); i < N; i++ {
		if !solve(curpos, routes[i]) {
			fmt.Println("No")
			return
		}
		curpos = routes[i]
	}
	fmt.Println("Yes")
}

func solve(curpos pos, nextpos pos) bool {
	// 距離の差
	dist := abs(curpos.x - nextpos.x)
	dist += abs(curpos.y - nextpos.y)
	time := abs(nextpos.time - curpos.time)
	if dist <= time && time%dist == 0 {
		return true
	}
	return false
}

/*==========================================
 *             Library
 *==========================================*/
func NextPermutation(x sort.Interface) bool {
	n := x.Len() - 1
	if n < 1 {
		return false
	}
	j := n - 1
	for ; !x.Less(j, j+1); j-- {
		if j == 0 {
			return false
		}
	}
	l := n
	for !x.Less(j, l) {
		l--
	}
	x.Swap(j, l)
	for k, l := j+1, n; k < l; {
		x.Swap(k, l)
		k++
		l--
	}
	return true
}
func doubleAry(h int64, w int64, init int64) (res [][]int64) {
	res = make([][]int64, h)
	for i := int64(0); i < h; i++ {
		res[i] = make([]int64, w)
		for j := int64(0); j < w; j++ {
			res[i][j] = init
		}
	}
	return
}

func aryEq(a []int64, b []int64) bool {
	return reflect.DeepEqual(a, b)
}

func clone(n []int64) (r []int64) {
	r = make([]int64, len(n))
	for i := 0; i < len(n); i++ {
		r[i] = n[i]
	}
	return
}
func write(s string) {
	writer.WriteString(s)
}

func print() {
	writer.Flush()
}

// scanner.Split(bufio.ScanWords) をコメントアウトしないと使用不可
func readLine() (s string) {
	if scanner.Scan() {
		s = scanner.Text()
	}
	return s
}

func readInt() (read int64) {
	scanner.Scan()
	read, err := strconv.ParseInt(scanner.Text(), 10, 64)
	if err != nil {
		panic(err)
	}
	return
}

func readFloat() (read float64) {
	scanner.Scan()
	read, err := strconv.ParseFloat(scanner.Text(), 64)
	if err != nil {
		panic(err)
	}
	return
}

func readRunes() (read []rune) {
	scanner.Scan()
	for _, v := range scanner.Text() {
		read = append(read, v)
	}
	return
}

func readString() (read string) {
	scanner.Scan()
	read = scanner.Text()
	return
}

func readStrings() (read []string) {
	scanner.Scan()
	for _, v := range scanner.Text() {
		read = append(read, string(v))
	}
	return
}

func s2i(s string) int64 {
	var intVal, e = strconv.ParseInt(s, 10, 64)
	if e != nil {
		panic(e)
	}
	return intVal
}

func i2s(i int64) string {
	var strVal = strconv.FormatInt(i, 10)
	return strVal
}

func s2f(s string) float64 {
	var floatVal, e = strconv.ParseFloat(s, 64)
	if e != nil {
		panic(e)
	}
	return floatVal
}

func abs(i int64) int64 {
	return int64(math.Abs(float64(i)))
}

func max(a ...int64) int64 {
	ans := int64(0)
	for i, v := range a {
		if i == 0 {
			ans = v
		}
		if ans < v {
			ans = v
		}
	}
	return ans
}
func min(a ...int64) int64 {
	ans := int64(0)
	for i, v := range a {
		if i == 0 {
			ans = v
		}
		if ans > v {
			ans = v
		}
	}
	return ans
}

func sum(i []int64) int64 {
	sum := int64(0)
	for _, val := range i {
		sum += val
	}
	return sum
}

func split(s string) []string {
	return strings.Fields(s)
}

func strAry2intAry(strs []string) []int64 {
	var ret = make([]int64, 0, len(strs))
	for _, str := range strs {
		var intVal = s2i(str)
		ret = append(ret, intVal)
	}
	return ret
}

func intAry2strAry(nums []int64) []string {
	var ret = make([]string, 0, len(nums))
	for _, num := range nums {
		var strVal = i2s(num)
		ret = append(ret, strVal)
	}
	return ret
}

func ary2str(strs []string) string {
	return strings.Join(strs, " ")
}

func reverse(res []int64) []int64 {
	for i, j := 0, len(res)-1; i < j; i, j = i+1, j-1 {
		res[i], res[j] = res[j], res[i]
	}
	return res
}
func reverseStr(res []string) []string {
	for i, j := 0, len(res)-1; i < j; i, j = i+1, j-1 {
		res[i], res[j] = res[j], res[i]
	}
	return res
}

func ini(res []int, init int) {
	if len(res) == 0 {
		return
	}
	res[0] = init
	for i := 0; i < len(res); i++ {
		copy(res[i:], res[:i])
	}
}

//
// func regexpExample() {
//     // Your code here!
//     var str = "13:20"
//     r := regexp.MustCompile(`(\d+):(\d+)`)
//     fmt.Println(r.FindStringSubmatch(str))
// }

// type Country struct {
//     gold int
//     silver int
//     blonze int
// }

// // 複数ソートのサンプル
// func stableSortExample() []Country{
//     var country = []Country {
//         {gold:1, silver:2, blonze:3},
//         {gold:1, silver:2, blonze:3},
//         {gold:1, silver:3, blonze:2},
//         {gold:1, silver:3, blonze:3},
//     }
//     sort.SliceStable(country, func(i, j int) bool { return country[i].blonze > country[j].blonze })
//     sort.SliceStable(country, func(i, j int) bool { return country[i].silver > country[j].silver })
//     sort.SliceStable(country, func(i, j int) bool { return country[i].gold > country[j].gold })
//     return country
// }
