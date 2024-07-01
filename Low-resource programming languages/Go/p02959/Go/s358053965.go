package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main(){
	var sc = bufio.NewScanner(os.Stdin)
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	N, _ := strconv.Atoi(s)
	if sc.Scan() {
		s = sc.Text()
	}
	aArr := strings.Split(s, " ")
	if sc.Scan() {
		s = sc.Text()
	}
	bArr := strings.Split(s, " ")

	// ここから
	sum := 0
	kurikoshi := 0
	for i := 0; i < N; i++ {
		monsterNum, _ := strconv.Atoi(string(aArr[i]))
		heroBusterNum, _ := strconv.Atoi(string(bArr[i]))
		heroBusterNum += kurikoshi
		if monsterNum > heroBusterNum {
			sum += heroBusterNum
		}else{
			sum += monsterNum
			kurikoshi = heroBusterNum - monsterNum
		}
	}
	monsterNum, _ := strconv.Atoi(string(aArr[len(aArr)-1]))
	if monsterNum > kurikoshi {
		sum += kurikoshi
	}else{
		sum += monsterNum
	}

	fmt.Println(sum)
}
