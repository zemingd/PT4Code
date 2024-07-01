package main
import(
	"fmt"
)
func main(){
	var a int
	fmt.Scan(&a)
	ss := make([]int,a)
	dd := make([]int,a)
	for i := 0;i<a;i++ {
		ss[i] = i+1
		dd[i] = i+1
	}
	max := 0
	for b:= 0;b<len(ss);b++{
		tmp := 0
		for c:= 0;c<len(ss);c++ {
			tmp += ss[c]%dd[c]
			if max < tmp {
				max = tmp
			}
		}
		dd = append(dd[1:],dd[0])
	}
	fmt.Println(max)
}