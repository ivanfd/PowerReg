# Регулятор потужності зі стабілізацією.

	
  Використовується PDM (Pulse Density Modulation) (Модуляція щільності імпульсів).
  По другому ще називають, алгоритм Брезенхема.<br/>
  В файлі main.h є посилання на джерело інформації по даному алгоритму.<br/>

  
  Напруга від якої розраховується стабілізація - 220В. В ПО потрібно налаштувати опір тену, який під'єднано до регулятора.<br/>
  Це потрібно для правильного відображення потужності на дисплеї.<br/>
  Хоча можна і не налаштовувати, на роботу це не впливає. Тільки для зручності.
  
  Схематично сам регулятор розбитий на декілька модулів. Кожен з модулів виготовлений на окремій платі.
  
  * Основна плата (плата керування).
  * Дисплейний модуль.
  * Модуль детектора нуля.
  * Модуль управління симістором.
  * Трансформатор вимірювання True RMS.

![image](https://github.com/ivanfd/PowerReg/blob/master/Scheme/main.jpg)


 ![image](https://github.com/ivanfd/PowerReg/blob/master/Scheme/moc.jpg) 
 
![image](https://github.com/ivanfd/PowerReg/blob/master/Scheme/zero.jpg)

 ![image](https://github.com/ivanfd/PowerReg/blob/master/Scheme/STRUCT_REG.JPG)
