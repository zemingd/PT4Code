package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
)
 
var sc = bufio.NewScanner(os.Stdin)

//fmt.Scan(&a)とかの方が楽ではある。
//1行に二つ以上の塊があるパターン
//for r = append(r, s[0])
//的な感じ
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}
 
func abc053b(str string){
	ans := strings.LastIndex(str,"Z") - strings.Index(str,"A") + 1
	fmt.Println(ans)
}
 
func main(){
	str := ""
	fmt.Scan(&str)
	abc053b(str)
}