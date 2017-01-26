/*
 * Copyright (C) 2017 Marcos Cleison Silva Santana
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
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