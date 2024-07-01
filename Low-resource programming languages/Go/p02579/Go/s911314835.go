package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var field [][]string
var scoreField [][]int
var inf int

type me struct {
	h int
	w int
	count int
	mae string
}
var allTo map[int]int
var scoreMap [][]int
func main() {
	scan_init()
	h := scanInt()
	w := scanInt()
	c_h := scanInt()-1
	c_w := scanInt()-1
	d_h := scanInt()-1
	d_w := scanInt()-1
	// allTo := map[int]int{}
	scoreMap := make([][]int, h)
	// allToでマス目をワープのみでいける区間で考えれるようにする
	field = make([][]string, h)
	scoreField = make([][]int, h)
	inf = h * w + 1
	for i:= 0; i<h; i++ {
		field[i] = strings.Split(scan(), "")
		scoreMap[i] = make([]int, w)
		for j:= 0; j<w; j++ {
			if field[i][j] == "#" {
				scoreMap[i][j] = 1
			}
		}
	}
	//for i:=0; i<h; i++ {
	//	scoreField[i] = make([]int, w)
	//	for j:= 0; j<w; j++ {
	//		scoreField[i][j] = inf
	//	}
	//}
	//field[c_h][c_w] = "S"
	//field[d_h][d_w] = "G"
	//fmt.Println(c_h,c_w,d_h,d_w, w)
// 	fmt.Println(field)
	var new me
	new.h = c_h
	new.w = c_w
	new.count = 0
	que := []me{}
	startQue := []me{}
	startQue = append(startQue, new)
	var get me
	get.count = -1
	falst := false
	for len(startQue) > 0 {
		// var startvalue me
		// startvalue, startQue = shift(startQue)
		//fmt.Println(startQue, "start", startvalue)
		que = append(que, startQue...)
		startQue = []me{}
		// nasi := false
		for len(que) > 0 {
			var value me
			value, que = shift(que)
			if value.h == d_h && value.w == d_w && value.count != -1 {
				if get.count > value.count  || !falst{
					get = value
					falst = true
				}
				// nasi = true
				break
			}
			if scoreMap[value.h][value.w] == 1 {
				continue
			}
			scoreMap[value.h][value.w] = 1
			//fmt.Println(value, "take", value.h, h-2)
			//fmt.Println("map")
			//for i := 0; i < len(scoreMap); i++ {
			//	fmt.Println(scoreMap[i])
			//}
			//left := false
			//up := false
			//right := false
			//down := false
			// left
			if value.w > 0 && field[value.h][value.w-1] != "#"  {
				que = append(que, me{value.h, value.w - 1, value.count, "left"})
				//left = true
			}
			// up
			if value.h > 0 && field[value.h-1][value.w] != "#" {
				que = append(que, me{value.h - 1, value.w, value.count, "up"})
				//up = true
			}
			//right
			if value.w < w-1 && field[value.h][value.w+1] != "#" {
				que = append(que, me{value.h, value.w + 1, value.count, "right"})
				//right = true
			}
			//down
			if value.h < h-1 && field[value.h+1][value.w] != "#" {
				que = append(que, me{value.h + 1, value.w, value.count, "down"})
				//down = true
			}
			// left2
			if value.w-1 > 0 && field[value.h][value.w-2] != "#"  && field[value.h][value.w-1] == "#" {
				startQue = append(startQue, me{value.h, value.w - 2, value.count + 1, "left2"})
			}
			// up2
			if value.h-1 > 0 && field[value.h-2][value.w] != "#" && field[value.h-1][value.w] == "#"{
				startQue = append(startQue, me{value.h - 2, value.w, value.count + 1, "up2"})
			}
			//right2
			if value.w < w-2 && field[value.h][value.w+2] != "#" && field[value.h][value.w+1] == "#"{
				startQue = append(startQue, me{value.h, value.w + 2, value.count + 1, "right2"})
			}
			//down2
			if value.h < h-2 && field[value.h+2][value.w] != "#"  && field[value.h+1][value.w] == "#"{
				startQue = append(startQue, me{value.h + 2, value.w, value.count + 1, "down"})
			}
			//斜め左上ゾーン
			if value.w > 0 && value.h > 0 && field[value.h-1][value.w-1] != "#" && field[value.h][value.w-1] == "#" && field[value.h-1][value.w] == "#"{
				startQue = append(startQue, me{value.h - 1, value.w - 1, value.count + 1, "leftup"})
			}
			if value.w-1 > 0 && value.h-1 > 0 && field[value.h-2][value.w-2] != "#" && ((field[value.h][value.w-1] == "#" && field[value.h-1][value.w] == "#") || field[value.h-1][value.w-1] == "#"){
				startQue = append(startQue, me{value.h - 2, value.w - 2, value.count + 1, "leftup2"})
			}
			//斜め右上ゾーン
			if value.w < w-1 && value.h > 0 && field[value.h-1][value.w+1] != "#" && field[value.h][value.w+1] == "#" && field[value.h-1][value.w] == "#"{
				startQue = append(startQue, me{value.h - 1, value.w + 1, value.count + 1, "rightup"})
			}
			if value.w < w-2 && value.h-1 > 0 && field[value.h-2][value.w+2] != "#" && ((field[value.h][value.w+1] == "#" && field[value.h-1][value.w] == "#") || field[value.h-1][value.w+1] == "#"){
				startQue = append(startQue, me{value.h - 2, value.w + 2, value.count + 1, "rightup2"})
			}
			//斜め左下ゾーン
			if value.w > 0 && value.h < h-1 && field[value.h+1][value.w-1] != "#" && field[value.h][value.w-1] == "#" && field[value.h+1][value.w] == "#"{
				startQue = append(startQue, me{value.h + 1, value.w - 1, value.count + 1, "leftdown"})
			}
			if value.w-1 > 0 && value.h < h-2 && field[value.h+2][value.w-2] != "#" && ((field[value.h][value.w-1] == "#" && field[value.h+1][value.w] == "#") || field[value.h+1][value.w-1] == "#"){
				startQue = append(startQue, me{value.h + 2, value.w - 2, value.count + 1, "leftdown2"})
			}
			//斜め右下ゾーン
			if value.w < w-1 && value.h < h-1 && field[value.h+1][value.w+1] != "#" && field[value.h][value.w+1] == "#" && field[value.h+1][value.w] == "#"{
				startQue = append(startQue, me{value.h + 1, value.w + 1, value.count + 1, "rightdown"})
			}
			if value.w < w-2 && value.h < h-2 && field[value.h+2][value.w+2] != "#" && ((field[value.h][value.w+1] == "#" && field[value.h+1][value.w] == "#") || field[value.h+1][value.w+1] == "#"){
				startQue = append(startQue, me{value.h + 2, value.w + 2, value.count + 1, "rightdown2"})
			}
		}
		//if nasi {
		//	break
		//}
	}
	fmt.Println(get.count)
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

func shift(slice []me) (me, []me){
	n := len(slice)
	value := slice[0]
	popSlice := slice[1:n]
	return value, popSlice
}