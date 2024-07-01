package main
import(
  "fmt"
  "bufio"
  "os"
  "strconv"
)
var sc=bufio.NewScanner(os.Stdin)
func nextInt() int{
  sc.Scan()
  i, e :=strconv.Atoi(sc.Text())
  if e!=nil{
    panic(e)
  }
  return i
}
func main(){
  var i int
  ans:=0
  sc.Split(bufio.ScanWords)
  n:=nextInt()
  a:=make([]int, n)
  for i=0;i<n;i++{
    a[i]=nextInt()
    ans+=a[i]-1
  }
  fmt.Println(ans)
}
