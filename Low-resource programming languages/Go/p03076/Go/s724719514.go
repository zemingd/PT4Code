package main
import(
  "fmt"
  "os"
  "bufio"
  "strconv"
)
func main(){
  var(
   b,c []int
   a,time,module int
  )
  module=10
  scan:=bufio.NewScanner(os.Stdin)
  for scan.Scan() {
    a,_=strconv.Atoi(scan.Text())
    b=append(b,a)
    if a%10==0{
      c=append(c,10-a%10)
    }else{
      c=append(c,a%10)
      if module>a%10{
       module=a%10 
      }
    }
  }
  for i,j:=range c{
    if j==10{
     time+=b[i]
    }else{
     time+=b[i]+10-j 
    }
  }
  fmt.Println(time-10+module)
}