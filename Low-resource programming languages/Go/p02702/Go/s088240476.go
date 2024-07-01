package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanInit()
	s := scan()
	// 1817181712114
	n := len(s)
	Split := strings.Split(s,"")
	m := 2019
	cnt := map[int]int{}
	total := 0
	x := 1
	ans := 0
	totalmod := 0
	for i:= n-1; i>=0; i-- {
		if _,ok := cnt[total]; !ok {
			cnt[total] = 0
		}
		cnt[totalmod] += 1 //S_r ≡ S_l (r,lは任意)なら+1なのでこうなってる　a_0も入ってないもの(s_0)が0なので最初に0に+1
		//　理解が普通にクソムズ　数学的な素養と簡単な累積和的知識が必要
		val,_ := strconv.Atoi(Split[i])
		total += val*x //累積和
		totalmod = total % m
		ans += cnt[totalmod]
		x *= 10
	}
	fmt.Println(ans)
}

var sc = bufio.NewScanner(os.Stdin)
func scanInit () {
	sc.Split(bufio.ScanWords)
}
// func scanInt () int{
// sc.Scan()
//	i,_ := strconv.Atoi(sc.Text())
//	return i
//}
func scan () string{
 sc.Scan()
	return sc.Text()
}
