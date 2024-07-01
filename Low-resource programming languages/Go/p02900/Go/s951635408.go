package main
 
import (
  "fmt"
)

//2つの入力値の最大公約数を返す
func max_div(num1 int, num2 int) int {
  
  if num1 < num2 {
    temp := num1
    num1 = num2
    num2 = temp
  }
  //ユークリッド互除法
  var rem int
  for { 
    rem = num1 % num2
    if rem == 0 {
      break
    }
    num1 = num2
    num2 = rem
  }
    return num2
}

func main() {
  
  var a,b int
  fmt.Scan(&a,&b)
  m := max_div(a,b)
  
  //A,Bの最大公約数の約数を求める
  var div []int
  count := 0

  if m == 1 {  //A,Bが互いに素の場合
    div = append(div,1)
    count++
  } else {
    for i := 1; i <= m/2; i++ { //m/2より大きい数はmを除いて約数になり得ない
      //約数を保持
      if m % i == 0 {
        div = append(div,i)
        count++
      }
    }
    div = append(div,m)
  }
  
  ans := 1 //答えは必ず1以上
  var p bool
  p = true //素数
  
  //保持した約数と、その約数以下の値との最大公約数を計算
  for i := count-1; i > 0; i-- {
    for j := 2; j < i; j++ {
      //最大公約数が1以外ならその約数は素数ではない⇒探索終了
      if max_div(div[i],j) != 1 {
        p = !p
        break
      }
    }
    //最後までtrueなら素数
    if p {
      ans++
    }
    p = true
  }
  fmt.Println(ans)
}
