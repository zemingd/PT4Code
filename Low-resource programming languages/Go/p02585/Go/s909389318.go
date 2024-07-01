package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	n := scanInt()
	k := scanInt()
	p := make([]int, n)
	c := make([]int, n)
	// ループを見つける
	//loopstart := 0 // index
	//loopmadecount := 0
	//loopmadeSum := 0
	for i:= 0; i<n;i ++ {
		p[i] = scanInt()-1
	}
	for i:= 0; i<n; i++ {
		c[i] = scanInt()
	}
	output := -int(math.Pow(10,9))
	for i:= 0; i<n; i++ {
		sum := 0
		// memo := map[int]bool{}
		sums := make([]int,n)
		for i:= 0; i<n; i++ {
			sums[i] = 0
		}
		next := i
		loopfalst := 0
		preLoop := 0
		for {
			sums[next] = sum
			next = p[next]
			sum += c[next]
			if sums[next] != 0 {
				loopfalst = next
				break
			}
		}
		next = i
		returnSum := 0
		for {
			next = p[next]
			if next == loopfalst {
				break
			}
			returnSum += c[next]
			preLoop ++
		}
		loopValue := 0
		loopSum := 0
		// lastLoop := 0
		next = loopfalst
		for {
			loopValue ++
			getNext := p[next]
			if getNext == loopfalst {
				// lastLoop = next
				loopSum = sums[next] - sums[loopfalst] + c[loopfalst]
				break
			}
			next = getNext
		}
		pureK := k
		target := 0
		next = i
		//fmt.Println("check", preLoop, loopValue, sums, loopSum,loopfalst, i)
		// 道のり までのpathと道のりを超えた先をあとで比べる
		if preLoop >= k {
			for j:= 0; j<k; j++ {
				targetTake := sums[next]
				next = p[next]
				if targetTake > output {
					// fmt.Println("check!!:preLoop>=k", target)
					output = target
				}
			}
			continue
		}
		getItem := 0 // preLoopの最大値
		next = i
		for j:= 0; j<preLoop; j++ {
			targetTake := sums[next]
			next = p[next]
			if targetTake > getItem {
				getItem = targetTake
			}
		}
		if loopSum > 0 {
			targetTake := returnSum
			pureK -= preLoop
			targetTake += (pureK/loopValue) *loopSum
			keisan := pureK % loopValue
			takeQQ := 0
			next = loopfalst
			for j:=0; j<keisan; j++ {
				getAA := p[next]
				// fmt.Println(getAA, "getAA")
				if takeQQ < sums[next] - returnSum {
					takeQQ = sums[next] - returnSum
				}
				next = getAA
			}
			targetTake += takeQQ
			if targetTake < getItem {
				targetTake = getItem
			}
			if keisan == 0 {
				picktake := returnSum
				picktake += ((pureK/loopValue) -1) * loopSum
				takeEE := 0
				next = loopfalst
				for j:= 0; j<loopValue; j++ {
					getAA := p[next]
					if takeEE < sums[next] -returnSum {
						takeEE = sums[next] -returnSum
					}
					next = getAA
				}
				picktake += takeEE
				if picktake > targetTake {
					targetTake = picktake
				}
			}
			if targetTake > output {
				//fmt.Println("check!!:loopSum>0", "targetTake=", targetTake, "takeQQ=", takeQQ, "keisan=", keisan, (pureK/loopValue) *loopSum)
				//fmt.Println("", returnSum, loopSum, i, loopfalst)
				output = targetTake
			} else {
				// fmt.Println("check!!loopSum>0 not", targetTake, getItem)
			}
		} else {
			//　マイナスなら道のりまでの経路のみを考える + loopの一巡目のみを考える
			next := i
			if k < loopValue + preLoop {
				for j:= 0; j<k; j++ {
					next = p[next]
					targetTake := sums[next]
					if targetTake > output {
						fmt.Println("check!!:loopValue<=0, k<", targetTake, next, i)
						fmt.Println("")
						output = targetTake
					} else {
						fmt.Println("check!!loopValue<=0  k< not", targetTake, next, i)
						fmt.Println("")
					}
				}
			} else {
				for j:= 0; j<loopValue+preLoop; j++ {
					next = p[next]
					targetTake := sums[next]
					if targetTake > output {
						fmt.Println("check!!:loopValue<=0, k>", targetTake)
						fmt.Println("")
						output = targetTake
					} else {
						fmt.Println("check!!loopValue<=0 k >not", targetTake, i)
						fmt.Println("")
					}
				}
			}
		}
	}
	fmt.Println(output)

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
	list := strings.Split(S, "")
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