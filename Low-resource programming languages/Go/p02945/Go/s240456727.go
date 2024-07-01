func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(stdin io.Reader, stdout io.Writer) {
	var a, b int
	fmt.Fscanf(stdin, "%d%d", &a, &b)
	ans := int(math.Max(float64(a*b), math.Max(float64(a+b), float64(a-b))))
	fmt.Fprintln(stdout, ans)
}
