package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"
)

var(
	inf = 922337203685477580//7
	intMax = 9223372036854775807
	stdin = bufio.NewReader(os.Stdin)
	mod = 1000000007
	mod9 = 1000000009
	//////////////////////////////////
	stack []byte
)

func init()  {
	rand.Seed(time.Now().UnixNano())
	//fmt.Println(time.Now().UnixNano())
}

func main() {
	n := goint()
	ls := intLine(n,0)
	ans := 0
	for i := 0;i < n;i ++{
		for j := i;j < n;j ++{
			ans += ls[i] ^ ls[j]
			ans %= mod
		}
	}
	fmt.Println(ans)
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

//素因数分解
func factorization(n int) [][]int {
	prime := make([][]int,0)
	for i:=2;i*i-1<=n;i++{
		count := 0
		for ;n % i == 0;{
			count ++
			n /= i
		}
		if count != 0{
			prime = append(prime,[]int{i,count})
		}
	}
	if n != 1{
		prime = append(prime,[]int{n,1})
	}
	return prime
}

//割り算a/b mod p
func extendedeuclidean(a,b,x,y int) (int,int,int) {
	if b == 0{
		x = 1;y = 0
		return a,x,y
	}
	d,y,x := extendedeuclidean(b,a%b,y,x)
	y -= a/b * x
	return d,x,y
}
func divmod(a,b,p int) int {
	var x,y = 0,0
	_,x,y= extendedeuclidean(b,p,x,y)
	return (p + ((x * a) % p)) % p
}

//選ぶ
func conb(a,b,p int) int {
	n := 1
	for i := 0;i < b; i ++ {
		n *= (a - i) % p
		n %= p
	}
	n1 := 1
	for i := 1;i <= b;i ++ {
		n *= (b - 1) % p
		n %= p
	}
	return divmod(n,n1,p)
}

//スライスを二分探索して指定した数が入りそうなインデックスを返す
func binary_search(list []int,n int) int {
	if list[0] >= n {
		return 0
	}
	front := 0
	back := len(list) - 1
	for ; ;  {
		i := (front + back) / 2
		if list[i] > n{
			back = i
		} else {
			front = i
		}
		if back - front == 1{
			return back
		}
	}
}

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

//逆にする
func revers(ls []int,l int,r int) {
	if r - l <= 0{return}
	for {
		ls[l],ls[r] = ls[r],ls[l]
		l ++;r --
		if r - l <= 0{return}
	}
}

//素数判定
func judge_p(n int) bool {
	check := true
	for i:=2;i*i<=n;i++{
		if n % i == 0{
			return false
		}
	}
	return check
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
