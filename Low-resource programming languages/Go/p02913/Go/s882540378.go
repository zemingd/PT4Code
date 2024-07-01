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
	n:=goint()
	s := "0" + gostring()
	check := 0
	for i:=0;i<n-1;i++{
		s = s[1:]
		ls := z_algorithm(s)
		for j,v := range ls {
			check = max(check,min(j,v))
		}
	}
	fmt.Println(check)
}

func z_algorithm(s string) []int {
	c := 0;n := len(s)
	ls := make([]int,n)
	for i:=1;i<n;i++{
		l := i - c
		if ls[l] + i < c + ls[c]{
			ls[i] = ls[l]
		} else {
			j := max(0,c + ls[c] - i)
			for ;i + j < n && s[j] == s[j+i];{
				j ++
			}
			ls[i] = j
			c = i
		}
	}
	ls[0] = n
	return ls
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