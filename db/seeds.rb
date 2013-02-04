# coding: utf-8
Lesson.create({
  description: "Najczęściej stosowanym podziałem tekstu jest: rozdział, seksja, podsekcja, podpodsekcja. W LaTeXu 
  słuzą do tego polecenia odpowiednio: \\chapter{nazwa}, \\section{nazwa}, \\subsection{nazwa}, \\subsubsection{nazwa}. 
 	Mniejszymi elementami są akapit, nowa linia i zdanie. Należy pamiętać o tym, że rozpoczęcie akapitu oznacza nowy 
 	wątek, więc nie należy go nadużywać. LaTeX umożliwia utworzenie go przy użyciu pustej linii. Przejście do nowej 
 	linii wykonuje się za pomocą polecenia \\newline lub jego skróconej wersji - \\. Dodatkową opcją edycji tekstu 
  jest przejście do nowej linii, którą wywołuje komenda \\newpage.",
  question: "Utworzyć rozdział 'Przykładowy rozdział' oraz sekcję 'Przykładowa sekcja'. W sekcji napisać zdanie
  'Ala ma kota' i przejść do nowej linii przy wykorzystaniu pełnej komendy.",
  answer: "\\chapter{Przykładowy rozdział} \\section{Przykładowa sekcja} Ala ma kota \\newline"
})

Lesson.create({
  description: "Kolejną rzeczą, którą należy wiedzieć przy pisaniu tekstu przy użyciu edytora LaTeXa są znaki 
  specjalne. Jednym z wartych wspomnienia jest cudzysłów. Jeżeli chcemy utworzyć wersję angielską używamy 
  podwojonego apostrofu. W przypadku polskiego cudzysłowia należy użyć najpierw podwojonego przecinka a następnie
  podwojonego apostrofu. Kolejnym znakiem jest wielokropek. Do jego utworzenia stosuje się komendę \\ldots.",
  question: "Napisać zdanie 'Ala ma kota...' w polskim cudzysłowiu i przy użyciu komendy tworzącej wielokropek.",
  answer: ",,Ala ma kota \\ldots''"
})

Lesson.create({
  description: "LaTeX umożliwia automatyczne generowanie spisu treści za pomocą polecenia \\tableofcontents. 
  Jest on generowany w miejscu wstawienia. Należy jednak pamiętać, że przez mechanizm przetwarzania dokumentu, spis
  treści tworzony jest dopiero za drugim razem. Dzieje się tak, gdyż LaTeX przetwarza dokument strona po stronie
  i nie może wstawić spisu treści na początku, gdyż nie jest znana jeszcze jego treść i numeracja stron. Czasem może
  być potrzebna trzecia kompilacja. Sygnalizuje to komunikat: LaTeX Warning: Label(s) may have changed. Return to get
  cross-references right. 
  Kolejną przydatną funkcją LaTeXa jest generowanie strony tytułowej. Służy do tego polecenie \\maketitle, które 
  powinno być umieszczone na samym początku dokumentu (po poleceniu begin{document}). Zawartość strony tytułowej 
  ustalają polecenia: \\title{...}, \\author{...} oraz \\date{...}, umieszczane w preambule. Jeżeli dokument ma kilku
  autorów, ich imiona i nazwiska rozdziela się instrukcją \\and.",
  question: "Utworzyć zawartość strony tytułowej dla autorów: Jana Nowaka i Anny Kowalskiej i dokumentu 'Ala ma kota'.",
  answer: "\\title{Ala ma kota}
  \author{Jan Nowak \\and Anna Kowalska}"  
})

Lesson.create({
	description: "W dłuższych tekstach stosuje się odsyłacze do rysunków, tabel lub innch fragmentów tekstu. LaTeX
	udostępnia do ich wstawiania trzy różne instrukcje: \\label{etykieta}, \\ref{etykieta} i \\paferef{etykieta}.
	Argument etykieta to ciąg liter, cyfr lub znaków interpunkcyjnych ustalanych przez użytkownika. LaTeX zamienia
	\\ref{} na numer tego rozdziału, punktu, rysunku, tabeli lub równania, za którym bezpośrednio została umieszczona
	instrukcja \label{} zawierająca identyczną etykietę. Polecenie \\pageref{} działa podobnie jak \\ref{}, z tym że 
	wstawia dodatkowo numer strony, na której znajduje się element oznaczony etykietą.",
	question: "Uzupełnić podane zdanie o odsyłacze: Odsyłacz do tego miejsca ... wygląda tak: 'patrz punkt ... na 
	stronie ...'. Użyć atykiety 'odsylacz'.",
	answer: "Odsyłacz do tego miejsca \\label{odsylacz} wygląda tak: 'patrz punkt \\ref{odsylacz} na stronie \\pageref{odsylacz}'"

})

Lesson.create({
	description: "Równie ważne jak odsyłacze są przypisy. Służy do nich polecenie \\footnote{tekst przypisu}, które 
	należy wstawić po słowie lub zdaniu, do którego się odnosi. Numerowanie przypisów następuje automatycznie. To w jaki
	sposób to następuje zależy od użytej klasy dokumentu. Jeżeli używana jest klasa article, numeracja jest ciągła
	a w klasach report i book przypisy są numerowane w ramach rozdziałów.",
	question: "Utworzyć przypis do tekstu: 'Ala ma psa' o treści: 'a nie kota'.",
	answer: "Ala ma psa \\footnote{a nie kota}"
})

Lesson.create({
	description: "Często używane w tekstach są wypunktowanie oraz numeracja. W LaTeXu są to nie instrukcje lecz 
	środowiska. Charakteryzują się konstrukcją begin{nazwa_środowiska} end{nazwa_środowiska}. Dozwolone jest ich 
	zagnieżdżanie, lecz nie przeplatanie. Do tworzenia listy numerowanej służy środowisko enumerate a do punktowanej
	- itemize. Każdy element danej listy nalezy poprzedzić poleceniem \\item.",
	question: "Stworzyć następującą listę: 1. Przykładowa lista: - element, - kolejny element 2. Kolejny punkt",
	answer: "\begin{enumerate} \\item Przykładowa lista: \\begin{itemize} \\item element \\item kolejny element \\end{itemize} \\item Kolejny punkt \\end{enumerate}"
})
 
Lesson.create({
	description: "Kolejnymi wartymi uwagi środowiskami są flushleft, flushright i center. Służą one do wyrównywania
  tekstu odpowiednio do lewego i prawego boku oraz do wyśrodkowania. Używa się ich analogicznie jak środowisk 
  enumerate i itemize. 
  Warto również wspomnieć o tworzeniu tabel. Używane do tego jest środowisko tabular. Dostosowuje ono automatycznie
  szerokość kolumn do tekstu, należy tylko ustalić ich ilość i justowanie (r, l lub c). Jeżeli użytkownik chce 
  mieć kolumnę o określonej szerokości, może użyć zapisu p{|szerokość_kolumny|}. Tekst jest wtedy wyrównywany do
  obu marginesów. Przez użycie znaku | przy określaniu szerokości wykonywane jest rozdzielenie kolumn pionową 
  kreską. 
  Wewnątrz środowiska tabular poszczególne wiersze oddziela się instrukcją \\ a poszczególne kolumny znakiem &.
  Za pomoca instrukcji \\hline wstawiana jest pozioma linia na całą szerokość tabeli.
  Przykład: \\begin{tabular}{|l|r|} \\hline
              dana1 & opis1 \\\\
              dana2 & opis2 \\\\ \\hline
            \\end{tabular}",
  question: "Utworzyć tabelę składającą się z 3 kolumn wyrównanych odpowiednio: do środka, prawej i lewej. 
  Powinna zawierać jeden wiersz o elementach: jeden, dwa, trzy. ",
  answer: "\\begin{tabular}{|c|r|l|} \\hline
              jeden & dwa & trzy \\\\ \\hline
            \\end{tabular}"
	})

Lesson.create({
  description: "W dokumentach często występuje potrzeba wstawienia obrazka lub tabeli. LaTeX umożliwia umieszczenie
  ich we wstawkach pomagających kontrolować ich położenie. Dopuszczalnymi miejscami umieszczenia wstawki są: 
  góra strony (t), dół strony (b), dokładnie w miejscu użycia (h), strona zawierająca wyłącznie wstawki (p). 
  Dodatkowo mozna umieścić parametr !, który pozwala na ignorowa niewiększości parametrów kontrolujących 
  umieszczanie wstawek.Parametry można łaczyć ustalając kolejność możliwości umieszczania wstawek.
  Środowiskami tworzącymi wstawki są: figure do obrazków i table do tabel. Ich zapis wygląda następująco:
  \\begin{figure}[miejsce_umieszczenia] oraz \\begin{table}[miejsce_umieszczenia]. Do zamieszczenia grafiki we 
  wstawce używa się polecenia \\includegraphics{obrazek}, gdzie obrazek jest jej nazwą. Ważne jest, żeby obrazek 
  był zamieszczony w tym samem folderze co dokument. Wstawka może zawierać również tytuł. Wstawiany jest już pod
  instrukcją zamieszczającą dany element, nadal w środowisku figure/ table. Służy do tego instrukcja \\caption{opis}.",
  question: "Utworzyć wstawkę obrazka o nazwie 'kot', zastrzec, żeby był dokładnie w miejscu wpisania i opisać 
  go jako 'Kot Ali'.",
  answer: "\\begin{figure}[h]
  \\includegraphics{kot}
  \\caption{Kot Ali} 
  \\end{figure} "
  })