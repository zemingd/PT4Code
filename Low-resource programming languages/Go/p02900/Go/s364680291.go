package main

import (
	"math/rand"
	"time"
	"os"
	"bufio"
	"fmt"
	"strconv"
)

var(
	inf = 9223372036854775807
	stdin = bufio.NewReader(os.Stdin)
	mod = 1000000007
	mod9 = 1000000009
	//////////////////////////////////
	stack []byte
)

func init()  {
	rand.Seed(time.Now().UnixNano())
}


func main() {
	a,b := goint(),goint()
	m := min(a,b)
	c := 1
	count := 1
	check := []int{}
	for i := 2;i*i <= m+1;i++{
		if a % i == 0 && b % i == 0{
			check = append(check, m/i)
			for _,v := range []int{i} {
				p := gcd(c, v)
				if p == 1 {
					c *= v
					count++
				}
			}
		}
	}
	if m != 1{
		check = append(check, m)
	}
	Sort(check,0,len(check)-1)
	for _,i := range check{
		if a % i == 0 && b % i == 0{
			check = append(check, m/i)
			for _,v := range []int{i} {
				p := gcd(c, v)
				if p == 1 {
					c *= v
					count++
				}
			}
		}
	}
	fmt.Println(count)
}

//gcd
func gcd(a,b int) int {
	if a > b{
		a,b = b,a
	}
	if b % a == 0{
		return a
	}else {
		return gcd(b%a,a)
	}
}

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

//||||||||||||||||||||||||||入力|||||||||||||||||||||||||||||||||||||||

//次のスペースか改行まで読み込む
func gostring() string {
	byte_ls := make([]byte,0)
	for  {
		b, _ := stdin.ReadByte()
		if b == 32 || b == 10 || b == 0{
			return string(byte_ls)
		} else if b == 13 {
			continue
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

//数字一行
func intLine(n ,a int) []int {
	ls := make([]int,n)
	for i,_ := range ls{
		ls[i] = goint() + a
	}
	return ls
}

//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

func sum(a ...int) int {
	ans := 0
	for i:=0;i<len(a);i++{
		ans += a[i]
	}
	return ans
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

func abs(n int) int {
	if n >= 0{
		return n
	} else {
		return -n
	}
}

func max(a ...int) int {
	ans := a[0]
	for i:=1;i<len(a);i++{
		if ans < a[i]{
			ans = a[i]
		}
	}
	return ans
}

func intList(n,k int) []int {
	ls := make([]int,n)
	for i:=0;i<n;i++{
		ls[i] = k
	}
	return ls
}