package main

// ---------- template start ----------
import (
	"fmt"
	"os"
	"strconv"
	"bufio"
	"strings"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func bordersInt(in_map [][]int, invalid int) [][]int{
	H, W := len(in_map), len(in_map[0])
	out_map := make([][]int, H+2)
	for h:=0; h<H+2; h++ {
		out_map[h] = make([]int, W+2)
		for w:=0; w<W+2; w++ {
			out_map[h][w] = invalid
		}
	}
	for h:=0; h<H; h++{
		for w:=0; w<W; w++{
			out_map[h+1][w+1] = in_map[h][w] 
		}
	}
	return out_map
}

func bordersString(in_map [][]string, invalid string) [][]string{
	H, W := len(in_map), len(in_map[0])
	out_map := make([][]string, H+2)
	for h:=0; h<H+2; h++ {
		out_map[h] = make([]string, W+2)
		for w:=0; w<W+2; w++ {
			out_map[h][w] = invalid
		}
	}
	for h:=0; h<H; h++{
		for w:=0; w<W; w++{
			out_map[h+1][w+1] = in_map[h][w] 
		}
	}
	return out_map
}

func scanIntLine(len int) []int{
	arr := make([]int, len)
	for i:=0; i<len; i++{
		sc.Scan()
		tmp, err := strconv.Atoi(sc.Text())
		if err == nil{
			arr[i] = tmp
		}
	}
	return arr
}

func scanStringLine(len int) []string{
	arr := make([]string, len)
	for i:=0; i<len; i++{
		sc.Scan()
		arr[i] = sc.Text()
	}
	return arr
}

func scanIntSplit(len int) []int{
	arr := make([]int, len)
	sc.Scan()
	for i, v := range strings.Split(sc.Text(), " "){
		tmp, err := strconv.Atoi(v)
		if err == nil{
			arr[i] = tmp
		}
	}
	return arr
}

func maxInt(arr... int) int {
	max := -10000007
	for _, v := range arr {
		if max < v {
			max = v
		}
	}
	return max
}

func minInt(arr... int) (int, int) {
	min, argmin := int(1e+9)+1, int(1e+5)+1
	for i, v := range arr {
		if min > v {
			min = v
			argmin = i
		}
	}
	return min, argmin
}

type Merger func(a, b int) int

type BIT struct {
	n int
	data []int
	merge Merger
}

func (bit *BIT) update(k, w int) {
	for i:=k; i<=bit.n; i += i&-i {
		bit.data[i] = bit.merge(bit.data[i], w)
	}
}

func (bit *BIT) query(k int) int {
	ret := 0
	for i:=k; i>0; i -= i&-i {
		ret = bit.merge(ret, bit.data[i])
	}
	return ret
}

func initBIT(a []int, m Merger) *BIT {
	n := len(a)
	bit := &BIT{n : n, data : make([]int, n+1), merge : m}
	for i, v := range a {
		bit.update(i+1, v)
	}
	return bit
}

type UFTree struct {
	data []int
}

func (uft *UFTree) root(x int) int {
	if uft.data[x] == x {
		return x
	} else {
		uft.data[x] = uft.root(uft.data[x])
	}
	return uft.data[x]
}

func (uft *UFTree) same(x, y int) bool {
	return uft.root(x) == uft.root(y)
}

func (uft *UFTree) unite(x, y int) {
	x = uft.root(x)
	y = uft.root(y)
	if x == y {
		return
	}
	uft.data[x] = y
}

func initUFTree(n int) *UFTree {
	uft := &UFTree{data : make([]int, n)}
	for i:=0; i<n; i++ {
		uft.data[i] = i
	}
	return uft
}

// ---------- template end ----------


func main(){
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	var N, M, cnt, ans int
	fmt.Scan(&N, &M)
	A, B := make([]int, M), make([]int, M)
	min, argmin := int(1e+9)+1, int(1e+5)+1
	for i:=0; i<N; i++ {
		ab := scanIntSplit(2)
		a, b := ab[0], ab[1]
		if a < min {
			min, argmin = a, i
		}
		A[i], B[i] = a, b
	}
	for {
		for i:=0; i<B[argmin]; i++ {
			cnt++
			ans += min
			if cnt == M {
				fmt.Println(ans)
				os.Exit(0)
			}
		}
		A[argmin] = int(1e+9)
		min, argmin = minInt(A...)
	}
	
	
}