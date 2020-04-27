# Lisps

Lispy których używam przy pracy ze steelem


## Skróty - sortowane po nazwach plików

`Zaznacza` - oznacza w tym wypadku zaznaczenie na "czerwono"

### ADVANCE_STEEL.lsp

**ss** - Zaznacza obiekty połączone na warsztacie

**sss** - Zaznacza obiekt zaznaczony na czerwono i ten który wskażesz i zaznacza wszystkie połączenia do niego dochodzące (montażowe i warsztatowe). Bardzo pomocne przy kopiowaniu ze śrubami

**kk** - Kopiowanie Advance Steel - działa jak `_copy` autocadowe

**mirr** - Lustro Advance Steel - działa jak `_morror` autocadowe

**ttr** - "Trim to line" na obiektach steela

**sr** - Tworzy spoinę

**urp** - Ukrywa ramki połączeń

**prp** - Pokazuje wcześniej ukryte ramki połączeń

**explodeandsave** - Zapisuje plik, następnie zapisuje plik z końcówką `_ACIS` exploduje do brył i zapisuje

**qw** - Włącza układ współrzędnnych na podstawie wybranego obiektu steela

**exporttonavis** - wyłącza steelowe niepotrzebne rzeczy z modelu i eksportuje model do `dwf`

**so** - Pokazuje tylko wybrane elementy (izolacja steelowa)

**sa** - Pokazuje wszystkie obiekty (pokaż wszystko steelowe)

**laynamedate** - Zmienia nazwy wszystkich warstw w pliku dwg - dodaje przedrostek z datą do każdej warstwy

### AUTOLOAD.lsp

Ten Lisp nie działa i nie będzie działał ze względu na nową politykę bezpieczeństwa Autodesku

### EXDWG.lsp

**ExDWG** - Włącza okienko z folderem w którym zapisany jest dwg

**fd** - Dokładnie to samo co wyżej

### F_XLINE.lsp

**h** - Rysuje poziomą prostą (równoległą do osi x) we wskazanym punkcie

**v** - Rysuje pionową prostą (równoległą do osi y) we wskazanym punkcie

### OSNAPZ_SWITCHER.lsp

**q** - Włącza/Wyłącza "płaskość" _autocadową_

### QUICK_BLOCK
**qb** - Tworzy blok "natychmiast" z zaznaczonych obiektów i nadaje mu unikalną nazwę

### SEGS.lsp

**segs** - Dzieli wybrany obiekt (autocadowy) na wyspecyfikowaną liczbę segmentów o równej długości. Uwaga wynikiem jest `polilinia` a nie punkty jak w autocadowym `_divide`

### UCS_MANIPULATE.lsp

**rx** - Obraca układ współrzędnych wokół osi X o 90deg

**ry** - Obraca układ współrzędnych wokół osi Y o 90deg

**rz** - Obraca układ współrzędnych wokół osi Z o 90deg

**rw** - Przywraca układ współrzędnych do globalnego

**uo** - Ustawia układ współrzędnych na autocadowy obiekt (nie działa na obiektach steela)

**rq** - Ustawia układ współrzędnych na autocadowy obiekt (działa na obiektach steela)

## Skróty - sortowane alfabetycznie

**ExDWG** - Włącza okienko z folderem w którym zapisany jest dwg

**explodeandsave** - Zapisuje plik, następnie zapisuje plik z końcówką `_ACIS` exploduje do brył i zapisuje

**exporttonavis** - wyłącza steelowe niepotrzebne rzeczy z modelu i eksportuje model do `dwf`

**fd** - Dokładnie to samo co wyżej

**h** - Rysuje poziomą prostą (równoległą do osi x) we wskazanym punkcie

**mirr** - Lustro Advance Steel - działa jak `_morror` autocadowe

**kk** - Kopiowanie Advance Steel - działa jak `_copy` autocadowe

**prp** - Pokazuje wcześniej ukryte ramki połączeń

**q** - Włącza/Wyłącza "płaskość" _autocadową_

**qb** - Tworzy blok "natychmiast" z zaznaczonych obiektów i nadaje mu unikalną nazwę

**qw** - Włącza układ współrzędnnych na podstawie wybranego obiektu steela

**rq** - Ustawia układ współrzędnych na autocadowy obiekt (działa na obiektach steela)

**rw** - Przywraca układ współrzędnych do globalnego

**rx** - Obraca układ współrzędnych wokół osi X o 90deg

**ry** - Obraca układ współrzędnych wokół osi Y o 90deg

**rz** - Obraca układ współrzędnych wokół osi Z o 90deg

**sa** - Pokazuje wszystkie obiekty (pokaż wszystko steelowe)

**segs** - Dzieli wybrany obiekt (autocadowy) na wyspecyfikowaną liczbę segmentów o równej długości. Uwaga wynikiem jest `polilinia` a nie punkty jak w autocadowym `_divide`

**so** - Pokazuje tylko wybrane elementy (izolacja steelowa)

**sr** - Tworzy spoinę

**ss** - Zaznacza obiekty połączone na warsztacie

**sss** - Zaznacza obiekt zaznaczony na czerwono i ten który wskażesz i zaznacza wszystkie połączenia do niego dochodzące (montażowe i warsztatowe). Bardzo pomocne przy kopiowaniu ze śrubami

**ttr** - "Trim to line" na obiektach steela

**uo** - Ustawia układ współrzędnych na autocadowy obiekt (nie działa na obiektach steela)

**urp** - Ukrywa ramki połączeń

**v** - Rysuje pionową prostą (równoległą do osi y) we wskazanym punkcie
