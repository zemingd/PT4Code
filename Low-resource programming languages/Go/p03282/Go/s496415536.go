package main
import(
	"fmt"
)
func main(){
	var s string
	var t, i int64
	fmt.Scan(&s,&t)
	for i=0;i<t;i++{
		if s[i]!='1'{
			fmt.Println(string(s[i]))
			return
		}
	}
	fmt.Println(1)
}
