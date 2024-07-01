package main
 
import (
	"fmt"
	"strconv"
)
 
func main() {
  abc126b()
}
 
func abc126b() {
	var line string
	fmt.Scanf("%s", &line)
	i, _ := strconv.Atoi(line[0:2])
	j, _ := strconv.Atoi(line[2:4])
 
	yymm := true
	mmyy := true
 
	if i < 1 || i > 12 {
		mmyy = false
	}
	if j < 1 || j > 12 {
		yymm = false
	}
 
	ans := "NA"
	if yymm && mmyy {
		ans = "AMBIGUOUS"
	} else if yymm {
		ans = "YYMM"
	} else if mmyy {
		ans = "MMYY"
	}
	fmt.Print(ans)
}