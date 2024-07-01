package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	// scan_init()
	nK := readLineToSlice()
	// fmt.Println(nK)
	n,_ := strconv.Atoi(nK[0])
	k,_ := strconv.Atoi(nK[1])
	//n := readLineToNumber()
	//k := readLineToNumber()
	//r := readLineToNumber()
	//s := readLineToNumber()
	//p := readLineToNumber()
	rsp := readLineToSlice()
	r,_ := strconv.Atoi(rsp[0])
	s ,_:= strconv.Atoi(rsp[1])
	p,_ := strconv.Atoi(rsp[2])
	t := readLine()
	// fmt.Println(n,k,r,s,p,t)
	wakeru := make([][]int, k)
	for i:= 0; i<k; i++ {
		wakeru[i] = make([]int,(n/k)+1)
	}
	kCount := 0
	sizeIndex := 0
	for i:= 0; i<n; i++ {
		wakeru[kCount][sizeIndex] = sirabe(t[i])
		kCount++
		if kCount == k {
			kCount = 0
			sizeIndex++
		}
	}
	count := make([]int, 3)
	for i:= 0; i<k; i++ {
		kaburi := 0
		// fmt.Println("check!!", wakeru[i], kaburi)
		for j:= 0; j<(n/k); j++ {
			// fmt.Println("check", wakeru[i][j], kaburi)
			if j == len(wakeru[i]) || wakeru[i][j+1] == 0 {
				// lastはみない
				break
			}
			if wakeru[i][j] != 0 {
				kaburi ++
				if wakeru[i][j] == wakeru[i][j+1] {
					continue
				}
				// fmt.Println(count, wakeru[i][j]-1)
				count[wakeru[i][j]-1] += kaburi - kaburi/2
				kaburi = 0
			} else {
				break
			}
		}
		lastIndex := 0
		if wakeru[i][len(wakeru[i])-1] == 0 {
			lastIndex = len(wakeru[i])-2
		} else {
			lastIndex = len(wakeru[i])-1
		}
		if kaburi > 0 {
			// fmt.Println("!!last", lastIndex, wakeru[i])
			kaburi ++
			// last一つ前で被ってることをみているので
			count[wakeru[i][lastIndex]-1] += kaburi - kaburi/2
		} else {
			// fmt.Println("last!!", lastIndex, wakeru[i])
			count[wakeru[i][lastIndex]-1] += 1
		}
	}
	sum := 0
	sum += count[0] * p + count[1] * r + count[2] * s
	fmt.Println(sum)
}
func sirabe (a byte) int {
	// r = ぐー s = チョキ t = パー
	if a == 'r' {
		return 1
	} else if a == 's' {
		return 2
	} else {
		return 3
	}
}
var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 200000)

func readLine() string {
	buf := make([]byte, 0, 200000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
func readLineToNumber() int {
	S := readLine()
	number, _ := strconv.Atoi(S)
	return number
}
func readLineToSlice() []string {
	S := readLine()
	list := strings.Split(S, " ")
	return list
}
func readLineToNumberSlice(memo map[string]int) []int {
	// err時は-1を代入
	S := readLine()
	intList := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if val, ok := memo[string(S[i])]; ok {
			intList[i] = val
		} else {
			intList[i] = -1
		}
	}
	return intList
}