package main
import ("fmt"
        "strings"
        "bufio"
        "os"
        "strconv"
       )
func main (){
  n,m,an:=0,0,0
  fmt.Scanf("%d %d", &n,&m)
  sc:=bufio.NewScanner(os.Stdin)
  sc.Scan()
  ins:=strings.Split(sc.Text(), " ")
  //in:=[]int
  for _, i := range ins{
    j,_:=strconv.Atoi(i)
    //in=append(in,j)
    an+=j
  }
  fmt.Println(n-an)
}