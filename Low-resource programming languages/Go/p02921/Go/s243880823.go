package main
import(
	"fmt"
)
func main(){
	var a,b string
	fmt.Scan(&a,&b)
	res := 0
	for i := 0;i<len(a);i++ {
		if a[i] == b[i] {
			res ++
		}
	}
	fmt.Println(res)
}