# chapel-python
Python Bindings for Chapel language.

## Example
```chapel
module Main{
use Python;

proc main(){
    writeln("Stating Python");
    var py_interpreter= new PythonInterpreter(); 

//you should have numpy installed
var str="import numpy as np\
x= np.random.sample(10)\
print x\
";
  
    py_interpreter.Eval(str);
 
    delete py_interpreter;

 }


}
```

To compile:

```bash
chpl test.chpl python.chpl -o test -lpython2.7 -lm
./test
```