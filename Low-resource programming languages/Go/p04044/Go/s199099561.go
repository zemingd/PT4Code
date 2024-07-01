package main
 
import (
    "bufio"
    "fmt"
    "os"
  	"strconv"
  	"strings"
  	"sort"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func nextLine() string {
    sc.Scan()
    return sc.Text()
}
 
func main() {
    s := nextLine()
  	ss := strings.Split(s, " ")
  	N, _ := strconv.Atoi(ss[0])
  	L, _ := strconv.Atoi(ss[1])
  
    dic := [] string{}
    for i := 1; i <= N; i++ {    
      dic = append(dic,nextLine())
    }
   sort.Strings(dic)
  dics := strings.Join(dic,"")
   fmt.Println(dics)
  
}