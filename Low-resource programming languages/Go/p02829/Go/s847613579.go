package main
import "fmt"

func deleteAryLeft(oAry []int, len int) []int{
	return oAry[len:]
}

func execMain4(num int, sAry []int) int {
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
				break
			}
		}

		if !isHit {
			bcnt += len(sAry)
			break
		}
	}

	if len(ans_ary) < 1 {
		return -1
	}

	return bcnt
}

func main() {
	var num int

	fmt.Scanf("%d", &num)
	sAry := make([]int, num)
	for i := 0; i < num; i++ {
		fmt.Scan(&sAry[i])
	}

	fmt.Print(execMain4(num, sAry))
}


