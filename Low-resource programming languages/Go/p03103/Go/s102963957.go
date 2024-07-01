package main

// ---------- template start ----------
import (
	"fmt"
	"os"
	"strconv"
	"bufio"
	"strings"
	"sort"
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



// ---------- template end ----------

type Shop struct {
	a, b int
}

type Shops []Shop

func (s Shops) Len() int {
	return len(s)
} 

func (s Shops) Swap(i, j int) {
	s[i].a, s[j].a = s[j].a, s[i].a
	s[i].b, s[j].b = s[j].b, s[i].b
}

func (s Shops) Less(i, j int) bool {
	return s[i].a < s[j].a
}


func main(){
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	var N, M, cnt, ans int
	fmt.Scan(&N, &M)
	shops := make(Shops, N)
	for i:=0; i<N; i++ {
		ab := scanIntSplit(2)
		shops[i] = Shop{a:ab[0], b:ab[1]}
	}
	sort.Sort(shops)
	for i:=0; i<M; i++ {
		for j:=0; j<shops[i].b; j++ {
			cnt++
			ans += shops[i].a
			if cnt == M {
				fmt.Println(ans)
				os.Exit(0)
			}
		}
	}
	
}