package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main(){
	var N int
	fmt.Scan(&N)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	aArr := make([]int, N+1)
	for i := range aArr {
		sc.Scan()
		aArr[i], _ = strconv.Atoi(sc.Text())
	}

	bArr := make([]int, N)
	for i := range bArr {
		sc.Scan()
		bArr[i], _ = strconv.Atoi(sc.Text())
	}

	// ここから
	sum := 0
	kurikoshi := 0
	for i := 0; i < N; i++ {
		monsterNum := aArr[i]
		heroBusterNum := bArr[i]
		if kurikoshi != 0 {
			if monsterNum > kurikoshi {
				sum += kurikoshi
				monsterNum -= kurikoshi
			}else{
				sum += monsterNum
				monsterNum = 0
			}
		}
		if monsterNum > heroBusterNum {
			sum += heroBusterNum
			kurikoshi = 0
		}else{
			sum += monsterNum
			kurikoshi = heroBusterNum - monsterNum
		}
	}
	monsterNum := aArr[len(aArr)-1]
	if monsterNum > kurikoshi {
		sum += kurikoshi
	}else{
		sum += monsterNum
	}

	fmt.Println(sum)
}
