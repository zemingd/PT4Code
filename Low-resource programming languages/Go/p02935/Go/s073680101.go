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
	stdin = bufio.NewReader(os.Stdin)
	mod = 1000000007
	mod9 = 1000000009
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

//次のスペースか改行まで読み込む
func gostring() string {
	byte_ls := make([]byte,0)
	check := false
	for  {
		b, _ := stdin.ReadByte()
		if b == 32 || (check == true && b == 10){
			return string(byte_ls)
		} else if b == 13 {
			check = true
		} else {
			byte_ls = append(byte_ls,b)
		}
	}
}

//上の関数のintバージョン
func goint() int {
	n,_ := strconv.Atoi(gostring())
	return n
}

//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

//ソートする
//sは最初のインデックス fは最後のインデックス
func Sort(ls []int,l int,r int)  {
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
	n := goint()
	ls := make([]int,n)
	for i:=0;i<n;i++{
		ls[i] = goint()
	}
	Sort(ls,0,len(ls)-1)
	c := (float64(ls[0]) + float64(ls[1])) / 2.0
	for i:=2;i<n;i++{
		c = (c + float64(ls[i])) / 2.0
	}
	fmt.Println(c)
}

func min(a ...int) int {
	ans := a[0]
	for i:=1;i<len(a);i++{
		if ans > a[i]{
			ans = a[i]
		}
	}
	return ans
}