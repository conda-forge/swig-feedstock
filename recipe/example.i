%module example

%inline %{
int add(int left, int right) {
  return left + right;
}
%}
