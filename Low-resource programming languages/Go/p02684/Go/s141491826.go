package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const initBufSize, maxBufSize = 10000, 1000000

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	res := make([]int, n)
	for i := range res {
		res[i] = nextInt()
	}
	return res
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(r, n int) int {
	return int(math.Pow(float64(r), float64(n)))
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initBufSize), maxBufSize)
	n := nextInt()
	k := nextInt()
	teleport := make([]int, n+1)
	for i := 1; i <= n; i++ {
		teleport[i] = nextInt()
	}
	//街nは何番目に到着するか
	visitSeq := make([]int, n+1)
	visitSeq[1] = 1
	//次に行く街、訪れた街の数、循環開始の街、循環終了の街、循環する街の数、目的の街は何番目に訪れる街か
	next, count, start, end, roop, target := 1, 1, 0, 0, 0, 0
	//fmt.Println("訪れる街：", next, "何番目に訪れる街？：", count)
	next = teleport[1]
	
	if k == 1 {
		fmt.Println(next)
		return
	} else
		for i := 2; i <= n; i++ {
			if visitSeq[next] == 0 {
				//まだ訪れていない街の場合、何番目に訪れるかを記録する
				count++
				visitSeq[next] = count
				end = next
				//fmt.Println("訪れる街：", next, "何番目に訪れる街？：", count)
			} else {
				//訪れたことがある街の場合、ループが存在する
				//fmt.Println("訪れる街：", next, "ここで循環終了")
				start = next
				if next == 1 {
					//街1が循環開始の場合：1～endを循環している
					roop = visitSeq[end]
					//循環を無視して目的の街が何番目に訪れる街に相当するかを求める
					target = k%roop + 1
				} else {
					//街1以外が循環開始の場合、start～endまでの街を循環している
					roop = visitSeq[end] - visitSeq[start] + 1
					//循環を無視して目的の街が何番目に訪れる街に相当するかを求める
					target = visitSeq[start] + (k-visitSeq[start]+1)%roop
				}
				//fmt.Println("循環開始の街", start, "循環終了の街", end, "ループする街の数", roop, "目的の街は何番目？", target)
				break
			}
			next = teleport[next]
			//そもそも循環しない場合は最後に到着する街を出力
			if i == n {
				fmt.Println(next)
				return
			}
		}
		//targetの値から目的の街を求める
		for i := range visitSeq {
			if visitSeq[i] == target {
				fmt.Println(i)
				return
			}
		}
	}
}
