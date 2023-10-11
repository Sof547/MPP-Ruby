# MPP-Ruby
University tasks in the discipline of Applied programming languages.  

# TASK 1

Make a small script game "rock paper scissors".  
We pass the subject as a command line argument to the input.  
The output is the result.  
EX:  
input --> `ruby game.rb Stone Paper`  
output --> `You lose`  

---

Зробити невелику скрипт гру "камні ножиці папір".  
На вхід передаємо предмет у вигляді аргументу командного рядка.  
На виході результат.  
EX:  
input --> `ruby game.rb Stone Paper`  
output --> `You lose`  

# TASK 2

Make a small script.  
At the input, we pass the mathematical expression in the form we are used to.  
On the way out, we see him at RPN.  
EX:  
input --> `2 + 1 × 4`  
output --> `2 1 4 * +`  

---

Зробити невеликий скрипт.  
На вхід передаємо математичний вираз у звичному нам вигляді.  
На виході бачимо його у RPN.  
EX:  
input --> `2 + 1 × 4`  
output --> `2 1 4 * +`  

# TASK 3

Implement the design pattern - **Observer**.  

---

Реалізувати паттерн проектування - **Observer**.  

# TASK 4

Write a program that accepts "pie with raisins" as input.  
*o is a raisin.*  
  
cake = 
[  
    `........`  
    `..o.....`  
    `...o....`  
    `........`  
]  
  
We need to evenly cut the cake into n small rectangular pieces so that each small cake contains 1 raisin. n is not an argument, this is the number of slices inside the cake.  
The result is such an array  
    [  
       `........`  
       `..o.....`  
    ,  
       `...o....`  
       `........`  
    ]  
     
The number of highlights is always greater than 1 and less than 10.  
If there are several solutions, choose the one with the largest width of the first element of the array.  
Gradually cut into n parts, which means the same area. But their form can be different.  
Each piece of cake should be rectangular.  
    
Examples  
cake =  
[  
    `.o......`    
    `......o.`  
    `....o...`   
    `..o.....`  
]  
  
In this example, we can find three solutions:  
solution 1 (horizontal cut):  
    [  
      `.o......` *// piece 1*  
    ,  
      `......o.` *// piece 2*  
    ,  
      `....o...` *// piece 3*  
    ,  
      `..o.....` *// piece 4*  
    ]  
  
solution 2 (vertical cut):  
    [  
      `.o` *// pc. 1*  
      `..`  
      `..`  
      `..`  
    ,  
      `..` *// pc. 2*  
      `..`  
      `..`  
      `o.`  
    ,  
      `..` *// pc. 3*  
      `..`  
      `o.`  
      `..`  
    ,  
      `..` *// pc. 4*  
      `o.`  
      `..`  
      `..`  
    ]  
   
solution 3  
    [  
      .o.. *// pcs. 1*  
      ....  
    ,  
      .... *// pcs. 2*  
      ..o.  
    ,  
      .... *// pcs. 3*  
      ..o.  
    ,  
      o... *//pcs. 4*  
      ....  
    ]  
we need to choose solution 1 as the result.  
   
Example of different forms:  
cake =  
[  
    `.o.o....`  
    `........`  
    `....o...`  
    `........`  
    `.....o..`   
    `........`  
]  
  
the result should be:  
    [  
      `.o` // *pcs. 1*  
      `..`  
      `..`  
      `..`  
      `..`  
      `..`  
    ,  
      `.o....` // *pcs. 2*  
      `......`  
    ,  
      `..o...` // *pcs. 3*  
      `......`  
    ,  
      `...o..` // *pcs. 4*  
      `......`  
    ]  
     
Although they have different shapes, they have the same area (2 x 6 = 12 and 6 x 2 = 12).  


