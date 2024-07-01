package main
 
func foo(n, a, b, i int) int {
  if a==b {
    return i
  } else if a<b {
    a = (a+1)%n
    b = (b-1)%n
    i = i+1
    return foo(n, a, b, i)
  } else {
    a = (a-1)%n
    b = (b+1)%n
    i = i+1
    return foo(n, a, b, i)
  }
}

func main() {
  foo(n, a, b, 0)
}