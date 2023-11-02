# ИДЗ2, вариант 18, Судакова Дарья Евгеньевна, БПИ227
Задание выполнено на оценку 10.
## Условие задачи
Разработать программу вычисления корня квадратного по итерационной формуле Герона Александрийского с точностью не хуже 0,05%.
## Метод решения
Я использовала формулу Герона, как и было указано в условии задачи. Формула выглядит так: 
$$x_{n+1} = \frac{1}{2}(x_n + \frac{a}{x_n})$$
где $a$ - исходное число, $x_n$ и $x_{n+1}$ - члены убывающей последовательности, коротая быстро сходится к $\sqrt{a}$.
## Критерии
### На оценку 4-5
1. Приведено решение на ассемблере, вывод данных осуществляется на консоль, ввод - через клавиатуру.
2. В программе присутствуют комментарии:
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/af9d5477-60b3-461f-86f6-3a5900da496d)
   
3. В программе используются подпрограммы [check](check.asm) и [square_root](square_root.asm)
   
4. Тестовое покрытие:
   При корректном вводе числа:
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/ef1c3f8a-d0b1-4d73-8d4b-ab8511b6b7fa)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/0653da97-c8e4-435c-8b76-98466752979f)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/433d72e1-7f75-4ddc-b965-990fdb9b7043)
   
  При некорректном вводе числа (некорректным вводом считаются отрицательные числа, поскольку в задании нет оговорки о работе с комплексными числами):  
  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/812ed15a-4165-4c8b-841a-b3c56d55729b)

### На оценку 6-7
1. В программе используются подпрограммы с локальными переменными, которые передаются через временные регистры целых чисел или временные float-регистры. Стек было решено не использовать, поскольку параметров в подпрограммах всего 1 или 2.
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/427a3122-79f4-4e8e-a790-6ce8a890aa4f)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/289189ae-de45-42f8-bb22-606465ccaf8e)
   
2. Внутри подпрограмм используются локальные переменные, которые передаются через временные регистры целых чисел или временные float-регистры. Стек было решено не использовать, поскольку временных регистров хватило для локальных переменных.

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/fb734ae4-b546-4bc2-b8d7-716bfe7bb039)

3. В местах вызова подпрограмм и в начале подпрограмм добавлены комментарии о значениях входных и выходных параметров.

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/2e1c44e2-1616-464a-ba0d-08ac6847edcb)


### На оценку 8
1. Разработанные подпрограммы поддерживают различные входные данные, поскольку передают параметры через временные регистры. Кроме того, [тестовая подпрограмма](test.asm) успешно использует функцию square_root несколько раз.
   
2. Для тестироваия испольновается [программа на языке ассемблера](test.asm). Для того, чтобы запустить ее при сборке, необходимо убрать флажок, указанный на скриншоте, поскольку все модули в папке подключены глобально, и по умолчанию запускается программа [main](main.asm).
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/572ef646-0d4a-400b-bd69-d2ffb1a1bcd4)

Тестовые случаи, рассматривые в программе:  

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/d5e04302-aee9-43b0-819b-2208cc3c1c72)

Такие же тестовые случаи, запускаемые через ввод с клавиатуры:  

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/28fbe9e9-c107-4de0-8692-8433d2340c9e)  

3. Написана [тестовая программа на с++](test.cpp). Она использует модуль std и библиотечную функцию sqrt, чтобы проверить вычисления в основной программе.

   Тестовые случаи, рассматрваемые в программе:

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/149086a9-a1b1-4976-85ba-c9f983e999b6)

   Такие же тестовые случаи, запускаемые через ввод с клавиатуры:   

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW2/assets/72216853/37a44285-bad3-4250-82a2-2ea0eadd19ae)


### На оценку 9
### На оценку 10
