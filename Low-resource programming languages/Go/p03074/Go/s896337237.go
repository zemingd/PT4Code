package main

import (
	"fmt"
	"os"
)

const STAND = "0"
const HANDSTAND = "1"

type POS struct {
	num                  int
	before_handstand_num int
	after_handstand_num  int
}

type POSs []POS

func main() {

	var n, k int
	var s string
	handstand := 0

	pos := make(POSs, 1)

	tmpPos := POS{}
	index := 0

	fmt.Scan(&n, &k)
	fmt.Scan(&s)
	people := make([]string, len(s))
	runes := []rune(s)
	for i := 0; i < len(runes); i++ {
		people[i] = string(runes[i])
		if string(runes[i]) == STAND {
			if tmpPos.num == 0 {
				if index != 0 {
					pos[index-1].after_handstand_num += handstand
					tmpPos.before_handstand_num += handstand
				} else {
					tmpPos.before_handstand_num += handstand
				}
				handstand = 0
				tmpPos.num++
			} else {
				tmpPos.num++
			}
		} else {
			if tmpPos.num == 0 {
				handstand++
				continue
			}
			if index == 0 {
				pos[0] = tmpPos
			} else {
				pos = append(pos, tmpPos)
			}
			tmpPos = POS{}
			index++
			handstand++
		}
	}
	if tmpPos.num == 0 && handstand != 0 && index == 0 {
		fmt.Println("0")
		os.Exit(0)
	}
	if tmpPos.num != 0 {
		pos = append(pos, tmpPos)
	} else {
		pos[index-1].after_handstand_num += handstand
	}

	if k > index {
		fmt.Println(n)
		os.Exit(0)
	}
	/*
		for _, v := range pos {
			fmt.Println(v)
		}
	*/
	changeMaxNum := 0
	changeTmpNum := 0
	for i := 0; i+k <= len(pos); i++ {
		changeTmpNum = 0
		for j := 0; j < k; j++ {
			changeTmpNum += pos[i+j].before_handstand_num + pos[i+j].num
			if j == k-1 {
				changeTmpNum += pos[i+j].after_handstand_num
			}
		}
		//		fmt.Println(changeTmpNum)
		if changeMaxNum < changeTmpNum {
			changeMaxNum = changeTmpNum
		}
	}
	fmt.Println(changeMaxNum)
}
