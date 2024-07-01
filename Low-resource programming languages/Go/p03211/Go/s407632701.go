package main
import(
	"fmt"
	"math"
	"strconv"
)
func main(){
	var s string
	var temp, ans float64
	ans=1000
	fmt.Scan(&s)
	for i:=0;i<len(s)-2;i++{
		a,_:=strconv.Atoi(s[i:i+3])
		temp=math.Abs(753-float64(a))
		if ans>temp{
			ans=temp
		}
	}
	fmt.Println(int(ans))
}
