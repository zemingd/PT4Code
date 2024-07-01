package main
import(
  "fmt"
  "bufio"
  "os"
  "strconv"
)
var sc=bufio.NewScanner(os.Stdin)
func nextInt() int64{
  sc.Scan()
  i, e :=strconv.ParseInt(sc.Text(), 10, 64)
  if e!=nil{
    panic(e)
  }
  return i
}
func min (a *int64, b int64) bool{
  if *a>b{
    *a=b
    return true
  }
  return false
}
func abs(a int64) int64{
  if a<0{
    return a*-1
  }else{
    return a
  }
}
func main(){
  var i int64
  dp:=make([]int64, 100010)
  sc.Split(bufio.ScanWords)
  n:=nextInt()
  a:=make([]int64, 100010)
  for i=0;i<n;i++{
    a[i]=nextInt()
  }
  for i=0;i<100010;i++{
    dp[i]=1000000001
  }
  dp[0]=0
  for i=0;i<n;i++{
    min(&dp[i+1], dp[i]+abs(a[i]-a[i+1]))
    min(&dp[i+2], dp[i]+abs(a[i]-a[i+2]))

  }
  fmt.Println(dp[n-1])
}
