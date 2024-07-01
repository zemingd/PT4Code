package main

import (
	"math/rand"
	"time"
	"os"
	"bufio"
	"fmt"
	"strconv"
	"strings"
)

var(
	sc = bufio.NewScanner(os.Stdin)
)

func init()  {
	rand.Seed(time.Now().UnixNano())
	buf := make([]byte, 0) //ここのサイズは何でもよさそう
	sc.Buffer(buf, 1000000009)
}


//||||||||||||||||||||||||||入力|||||||||||||||||||||||||||||||||||||||\
//数字一文字入力
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

//文字列を一行入力
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

//空白区切りの文字列の入力
func spaceLine() []string {
	sc.Scan()
	return strings.Split(sc.Text()," ")
}

//数字を一行入力
func intLine() []int {
	str := spaceLine()
	buf := make([]int,len(str))
	for i,s:=range str{
		buf[i],_ = strconv.Atoi(s)
	}
	return buf
}

//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

//ソートする
//sは最初のインデックス fは最後のインデックス
func Sort(ls []float64,l int,r int)  {
	if r - l <= 0{return}
	pipot := l + rand.Intn(r-l+1)
	ls[r],ls[pipot] = ls[pipot],ls[r]
	i := l
	for j:=l;j<r;j++{
		if ls[j] < ls[r]{
			ls[i],ls[j] = ls[j],ls[i]
			i ++
		}
	}
	ls[i],ls[r] = ls[r],ls[i]
	Sort(ls,l,i-1)
	Sort(ls,i+1,r)
}

//配列の大小を指定した要素で比較
//a < bならtrue
func sizeCheck(a []int,b []int,ls []int) bool {
	for _,i:= range ls{
		if a[i] < b[i]{
			return true
		} else if a[i] > b[i] {
			return false
		}
	}
	return false
}

//二次元配列のソート
func Sort2D(ls [][]int,l int,r int,index ...int)  {
	if r - l <= 0{return}
	pipot := l + rand.Intn(r-l+1)
	ls[r],ls[pipot] = ls[pipot],ls[r]
	i := l
	for j:=l;j<r;j++{
		if sizeCheck(ls[j],ls[r],index){
			ls[i],ls[j] = ls[j],ls[i]
			i ++
		}
	}
	ls[i],ls[r] = ls[r],ls[i]
	Sort2D(ls,l,i-1,index ...)
	Sort2D(ls,i+1,r,index ...)
}

func main() {
	l := intLine()
	n,m := l[0],l[1]
	a := intLine()
	cost := make(map[int]int)
	for _,v:=range a{
		if _,check := cost[v];check {
			cost[v] ++
		} else {
			cost[v] = 1
		}
	}
	for i:= 0;i<m;i++{
		bc := intLine()
		if _,check := cost[bc[1]];check {
			cost[bc[1]] += bc[0]
		} else {
			cost[bc[1]] = bc[0]
		}
	}
	i := 0
	ls := make([][]int,len(cost))
	for key,value := range cost{
		ls[i] = make([]int,2)
		ls[i][0] = key
		ls[i][1] = value
		i ++
	}
	Sort2D(ls,0,len(ls)-1,0)
	ans := 0
	for i:=len(ls)-1;i>=0;i--{
		b,c := ls[i][1],ls[i][0]
		if n >= b{
			ans += b*c
			n -= b
		} else {
			ans += n * c
			break
		}
		if n <= 0{break}
	}
	fmt.Println(ans)
}