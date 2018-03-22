Porownanie inflacji w wybranych krajach Unii Europejskiej
========================================================
author: Kamil Motyka, Hubert Mis
date: 12.01.2018
autosize: true</code>
transition: zoom
font-family:Georgia

Wstepne przygotowanie danych
========================================================
type:sub-section

Wartosci pochodza ze strony: <https://data.oecd.org/price/inflation-cpi.htm>.

Wybralismy interesujace nas lata i panstwa.
Dane znajdowaly sie w kilku plikach .csv, w zaleznosci od podzialu Inflacji na rozne typy produktow.
Wybralismy z nich najwazniejsze kolumny, nastepnie polaczylismy je w jednej tabeli.
Dla niektorych krajow brakowalo wartosci dla ostatich kwartalow, 
zostaly one uzupelnione wartosciami srednimi.
Na podstawie wartosci inflacji w wybranych przez nas latach, utworzylismy szeregi czasowe, 
zmieniajac dane numeryczne za pomoca funkcji ts().

Podstawowe dane
========================================================
type:sub-section

Przedstawione zostaly tutaj wybrane przez nas dane, wraz z mozliwoscia wybrania zakresu lat, ktory nas interesuje.
W zaleznosci od wybranego kraju oraz zaznaczonego zakresu, nasza aplikacja rysuje wykres oraz 
oblicza podtawowe statystki opisowe takie jak: minimum, maksimum, kwartyle dolny i gorny a takze srednia.

Korelacja
========================================================
type:sub-section

W tym miejscu mamy mozliwosc porownania wartosci inflacji w dla danego produktu, dla dwoch wybranych przez 
nas krajow. Dla wybranego przez nas zakresu zostaje rowniez policzony wspolczynnik korelacji Pearsona.

Sezonowosc
========================================================
type:sub-section

Analiza sezonowosci to kolejny problem, ktorym zajelismy sie podczas badania szeregow czasowych.
Na wykresie mozemy zobaczyc jak zmieniala sie sezonowosc oraz trend na przestrzeni lat dla wybranej przez nas inflacji produktu danego panstwa.
Zamieszczone zostaly tutaj takze dokladne wynik z analizy sezonowosci dla kolejnych kwartalow wybranych przez nas lat. 

Klasteryzacja
========================================================
type:sub-section

Klasteryzacja jest jedna z metod analizy danych. Glownym celem klasteryzacji jest podzial rozpatrywanego zbioru obiektow na klastry, w ten sposob, aby kazda z grup byla mozliwie jednorodna, a jednoczesnie poszczegolne klastry byly jak najbardziej zroznicowane miedzy soba. Dla klasteryzacji wykorzystalismy wartosci inflacji dla kwartalow a odleglosci zostaly policzone euklidesowo.
Wybierajac miedzy roznymi podmiotami inflacji mozemy zmienic wyswietlane drzewko klasteryzacyjne.

Dziekujemy za uwage
========================================================
type:alert
<br /><br />
Hubert Mis-shiny
<br />
Kamil Motyka-prezentacja
<br /><br /><br />

