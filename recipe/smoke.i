%module smoke
%inline %{
int add(int a, int b) { return a + b; }
%}
