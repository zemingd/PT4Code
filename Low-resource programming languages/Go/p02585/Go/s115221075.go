package main

import (
	"bufio"
	"fmt"
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
	memo := map[int]bool{}
	//loopstart := 0 // index
	//loopmadecount := 0
	//loopmadeSum := 0
	for i:= 0; i<n;i ++ {
		p[i] = scanInt()-1
	}
	for i:= 0; i<n; i++ {
		c[i] = scanInt()
	}
	take := 0
	nextIndex := 0
	for  {
		take := p[nextIndex]
		if _,ok := memo[take]; !ok {
			memo[take] = true
			nextIndex = take
		} else {
			// loopstart = take
			break
		}
	}
	// fmt.Println("takeGET!!")
	loopS := map[int]bool{}
	loopS[take] = true
	nextIndex = take
	for i:=0; i<10; i++{
		catch := p[nextIndex]
		// fmt.Println(catch, p, take)
		if catch == take {
			break
		} else {
			loopS[catch] = true
			nextIndex = catch
		}
	}
	loopsize := len(loopS)
	output := 0
	// fmt.Println("LOOP!!!")
	for i:= 0; i<n; i++ {
		// fmt.Println("one!!", i)
		// startを決める
		sum := 0
		if _,ok := loopS[i]; ok {
			// すでにloop内
			start := i
			next := start
			cost := 0 // oneloopのcostを考える
			for {
				cost += c[next]
				get := p[next]
				if get == start {
					break
				} else {
					next = get
				}
			}
			sum += (k / loopsize) * cost
			next = start
			for y:= 0; y< k%loopsize; y++ {
				sum += c[next]
				get := p[next]
				next = get
			}
		} else {
			pureK := k
			start := i
			next := i
			cost := 0
			// fmt.Println(loopS, next)
			loopsize = 0
			for {
				// fmt.Println(loopS, next)
				cost += c[next]
				get := p[next]
				next = get
				pureK -= 1
				loopsize ++
				if start == get {
					break
				}
			}
			sum += cost
			oneCost := 0
			start = next
			tugi := start
			for {
				oneCost += c[tugi]
				get := p[tugi]
				if get == start {
					break
				} else {
					tugi = get
				}
			}
			sum += (pureK / loopsize) * oneCost
			tugi = start
			for y:= 0; y< pureK%loopsize; y++ {
				sum += c[tugi]
				get := p[tugi]
				next = get
			}
		}
		if output < sum {
			output = sum
		}
	}
	// fmt.Println(k, loopstart, loopmadecount, loopmadeSum)
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