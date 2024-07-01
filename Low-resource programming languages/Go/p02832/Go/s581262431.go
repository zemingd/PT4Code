package main
import "fmt"

func deleteAryLeft(oAry []int, len int) []int{
	if len < 1 {
		return oAry
	}

	var rAry []int
	for i, t := range oAry {
		if i >= len {
			rAry = append(rAry, t)
		}
	}

	return rAry
}

func main() {
	var num int

	fmt.Scanf("%d", &num)
	sAry := make([]int, num)
	for i := 0; i < num; i++ {
		fmt.Scan(&sAry[i])
	}

	search_num := 1
	var ans_ary []int
	bcnt := 0
	for ; ; {
		isHit := false
		for i := 0; i < len(sAry); i++ {
			if sAry[i] == search_num {
				tAry := sAry[0:i+1]
				sAry = deleteAryLeft(sAry, len(tAry))
				ans_ary = append(ans_ary, tAry[i])
				if len(tAry) > 1 {
					bcnt += len(tAry) - 1
				}
				search_num++
				isHit = true
			}
		}

		if len(sAry) < 1 || !isHit {
			break
		}
	}

	if len(ans_ary) < 1 {
		fmt.Print(-1)
	} else {
		fmt.Print(bcnt)
	}
}


