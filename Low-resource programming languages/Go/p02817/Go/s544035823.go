package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}

func solver(a string, b string){
	fmt.Print(b)
  fmt.Println(a)
}
 
func main(){
	a := ""
	b := ""
	fmt.Scan(&a)
	fmt.Scan(&b)
	solver(a,b)
}