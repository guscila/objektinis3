# 3Lab.
v3.0 release
## Programos aprašymas
Programa leidžia naudotojui įvesti rankiniu būdu arba nuskaityti studentų duomenis ( vardą ir pavardę, atliktų namų darbų rezultatus (10-balėje sistemoje), egzamino balą ) ir suskaičiuoja galutinį balą pagal formulę ( *pav.1* ). Visos programos veikimo metu naudotojas gali pasirinkti kokio tipo ( vector ar list ) konteineris bus naudojamas. Įvesdamas duomenis rankiniu būdu naudotojas gali namų darbų ir egzamino rezultatuts įvesti arba atsitiktinai sugeneruoti. Naudotojui taip pat leidžiama sugeneruoti failą su studentų vardais, namų darbų ir egzamino rezultatais, kurį vėliau gali naudoti programos testavimo funkcijos metu. Failų testavimo metu, naudotojui pasirinkus failą, yra atliekama greičio spartos analizė naudojant vieną iš trijų studentų kategorizacijos strategijų bei suteikiant naudotojui pasirinkimą kokia tvarka bus surūšiuoti studentų *'Kietiakų'<sup>1</sup>* ir *'Vargšiukų'<sup>2</sup>* failai. Rezultatai yra išvedami į terminalą arba į failą priklausomai nuo pasirinktos funkcijos. Rezultatų, failų ir generacijos formatai yra aprašyti žemiau.
```
1 - Kietiakas - tai studentas, kurio galutinis vidurkis >=5;
2 - Vargšiukas - tai studentas, kurio galutinis vidurkis < 5;
```
*Pav.1:* ![pav.1](https://latex.codecogs.com/svg.image?&space;Galutinis=0.4*vidurkis&plus;0.6*egzaminas)<br>

<details>
  <summary><strong> Programos diegimo instrukcija </strong></summary>
 
## Programos diegimo instrukcija
1. Nukopijuojame projekto direktoriją ir paruošiame "build" direktoriją, kur nukeliaus visi mūsų sukurti failai:
```
cd projekto_direktorija
mkdir build
cd build
```
2. Sugeneruojame projekto failus naudodami CMake:
```
cmake ..
(čia naudojame "cmake ..", nes "CMakeLists.txt" failas yra aukštesnio lygio aplanke)
```
3. Kompliuojame programą Release režimu:
```
cmake --build . --config Release
```
4. Paleidžiame sukurtą programą:
```
.\v1.1.exe
```
#### Arba galite paleisti šiame projekte prikabintą `run.bat` failą:
```run.bat``` failą galite paleisti paspaudę ant jo du kartus arba terminale įvedę komandą:
```
.\run.bat
```
```
Instaliacijos reikalavimai: C++17 kompiliatorius; CMake VERSION >=3.10;
```
</details>

<details>
  <summary><strong> Programos naudojimo instrukcija </strong></summary>

## Programos naudojimo instrukcija
1. Įdiekite programą.
2. Programai pradėjus veikti, naudotojas pasirenka iš Meniu norimą naudoti funkciją ir toliau seka Meniu aprašytais nurodymais.
### Meniu
* 1 - Įvesti studentų duomenis rankiniu būdu arba generuojant atsitiktinai;<br>
  * 1.1 - Pasirinkti norimą naudoti konteinerį ( vector arba list );<br>
    * 1.1.1 - Įrašyti norimą įvesti studentų skaičių (n) ( rankiniu būdu );<br>
      * 1.1.1.1 - Pasirinkti ar n-tojo studento duomenis įvesti rankiniu būdu (*kartojama n kartų*);<br>
      *Rezultatai išvedami į terminalą.*
      * 1.1.1.2 - Pasirinkti ar n-tojo studento duomenis sugeneruoti atsitiktinai (*kartojama n kartų*);<br>
        * 1.1.1.2.1 - Įvesti norimą sugeneruoti namų darbų pažymių skaičių n-tajam studentui;<br>
*Rezultatai išvedami į terminalą.*
* 2 - Studentų duomenis nuskaityti iš failo;<br>
  * 2.1 - Pasirinkti norimą naudoti konteinerį ( vector arba list );<br>
    * 2.1.1 - Įvesti failo pavadinimą, kurį norite nuskaityti;<br>
    *Rezultatai išvedami į failą "rezultatai.txt".*
* 3 - Sugeneruoti failą su studentų duomenimis;<br>
  * 3.1 - Pasirinkti norimą naudoti konteinerį ( vector arba list );<br>
    * 3.1.1 - Įvesti failo pavadinimą, kurį norite sugeneruoti (name);<br>
      * 3.1.1 - Įvesti norimą sugeneruoti studentų skaičių faile ( rankiniu būdu );<br>
        * 3.1.1.1 - Įvesti norimą sugeneruoti namų darbų pažymių skaičių kiekvienam studentui ( rankiniu būdu );<br>
        *Failas "name.txt" sugeneruojamas ir išsaugomas aplanke "testavimo failai".*
* 4 - Atlikti failų testavimą/sparto analizę;<br>
  * 4.1 - Pasirinkti norimą naudoti konteinerį ( vector arba list );<br>
    * 4.1.1 - Įvesti failo pavadinimą, kurį norite nuskaityti;<br>
      * 4.1.1.1 - Pasirinkti norimą naudoti studentų kategorizacijos strategiją (1, 2 arba 3);<br>
        * 4.1.1.1 - Pasirinkti kaip surūšiuoti "Vargsiukai.txt" failą:<br>
          * pagal varda/pavarde abeceles didejimo tvarka;<br>
          * pagal varda/pavarde abeceles mazejimo tvarka;<br>
          * pagal galutini vidurki didejimo tvarka;<br>
          * pagal galutini vidurki mazejimo tvarka;\n";
          * failo nerusiuoti;<br>
        * 4.1.1.2 - Pasirinkti kaip surūšiuoti "Kietiakai.txt" failą:<br>
          * pagal varda/pavarde abeceles didejimo tvarka;<br>
          * pagal varda/pavarde abeceles mazejimo tvarka;<br>
          * pagal galutini vidurki didejimo tvarka;<br>
          * pagal galutini vidurki mazejimo tvarka;\n";
          * failo nerusiuoti;<br>
        *Ekrane pateikiami greičio spartos analizės rezultatai, o failai "Vargsiukai.txt" ir "Kietiakai.txt" išsaugojami į aplanką "testavimo failai".*
3. Programa nustoja veikti, kai yra išvedami rezultatai arba išvedama teksinė/informacinė eilutė, po vieno iš šių įvykių paspaudus bet kurį klaviatūros klavišą programa užsidaro.

</details>

## Ankstesnės versijos
[v0.1](https://github.com/guscila/objektinis/tree/v0.1-nauja)<br>
```
Dėl techninių nesklandumų įvykusių bandant įkelti didelio formato failus v0.1 yra v0.1-nauja šakoje bei trūksta dalies įvykdytų commit'ų.
```
#### [v0.2](https://github.com/guscila/objektinis/tree/v0.2) pokyčiai:
Versija v0.1 optimizuota ir papildyta funkcija leidžiančia naudotojui sugeneruoti studentų duomenų failus; pridėta failų spartos analizės funkcija; pridėta funkcija leidžianti naudotojui pasirinkti išvedimo failo rūšiavimo parametrą; struktūros bei funkcijos perkeltos į atskirus failus; sutvarkytas meniu; funkcijoms suteikti aiškesni pavadinimai.
#### [v0.3](https://github.com/guscila/objektinis/tree/v0.3) pokyčiai:
Versija v0.2 optimizuota ir papildyta galimybe pasirinkti norimą naudoti konteinerį; programa papildyta funkcija leidžiančia įvestų studentų duomenis išvesti į terminalą bei pateikianti jų saugojimo atmintyje adresus; programa papildyta Meniu struktūra ir detalesniu pasirinkimu; Timer'is papildytas saugojimo bei visų laiko trukmių išvedimo funkcijomis; failų spartos analizės funkcija papildyta studentų kategorizacijos bei išvedimo į failus spartos apskaičiavimu.
#### [v1.0](https://github.com/guscila/objektinis/tree/v1.0) pokyčiai:
Versija v0.3 optimizuota ir papildyta funkcija leidžiančiau naudotojui pasirinkti norimą naudoti studentų kategorizacijos strategiją; parengta įdiegimo instrukcija su `CMakeLists.txt` ir `run.bat`.
#### [v1.1](https://github.com/guscila/objektinis2/tree/v1.1) pokyčiai:
Versija v1.0 optimizuota, o Studento struktūra pakeista Studento klase, ko pasekoje atliktas kodo pritaikymas klasėms.
#### [v1.2](https://github.com/guscila/objektinis2/tree/v1.2) pokyčiai:
Versija v1.1 optimizuota, realizuoti visi reikiami *"Rule of Three"* įvesties ir išvesties operatoriai; atliktas įvesties ir išvesties metotų perdengimas.
```c++
// Operatoriai:
friend std::ostream& operator<<(std::ostream& out, const Studentas& stud);  // išvedimo operatorius
friend std::istream& operator>>(std::istream& in, Studentas& stud); // įvesties operatorius
```
<details>
 <summary><strong> "Rule Of Three" </strong></summary>
 
### "Rule Of Three":
 * Kopijavimo konstruktorius:
 ```c++
Studentas(const Studentas& copy):
    vardas_(copy.vardas_),
    pavarde_(copy.pavarde_),
    pazymiai_(copy.pazymiai_),
    egzas_(copy.egzas_),
    rez_(copy.rez_),
    mediana_(copy.mediana_) {}
```
 * Kopijavimo priskyrimo operatorius:
```c++
Studentas& operator = (const Studentas& copy) {
    if (this != &copy) {
        vardas_ = copy.vardas_;
        pavarde_ = copy.pavarde_;
        pazymiai_ = copy.pazymiai_;
        egzas_ = copy.egzas_;
        rez_ = copy.rez_;
        mediana_ = copy.mediana_;
    }
    return *this;
}
```
 * Destruktorius:
```c++
~Studentas() {
    vardas_.clear();
    pavarde_.clear();
    pazymiai_.clear();
    egzas_ = 0;
    rez_ = 0.0f;
    mediana_ = 0.0f;
}
```
</details>
<details>
 <summary><strong> Programoje naudojami metodai </strong></summary>

### Programoje naudojami metodai
#### Įvesties metodai:
 * ivesk() - rankiniu būdu arba atsitiktinai sugeneruojami naudotojo pasirinkti studentų duomenys, o naudojant `operator>>` įvedami studento vardas ir pavardė;
 * NuskaitymasIsFailo() - programa automatiškai nuskaito studentų duomenis iš failo;
#### Išvedimo metodai:
 * IsvedimasIFaila() - programa naudodama `operator<<` išveda rezultatus į failą ( išvedimo formatai žemiau );
 * IsvedimasITerminala() - programa naudodama `operator<<` išveda rezultatus į ekraną / terminalą ( išvedimo formatai žemiau );
</details>

#### [v1.5](https://github.com/guscila/objektinis2/tree/v1.5) pokyčiai:
Versija v1.2 optimizuota, sukurta nauja bazinė abstrakti Zmogus klasė, kurioje saugomas asmens vardas ir pavardė; Studento klasė paversta į išvestinę klasę iš klasės Zmogus.
##### Virtuali abstrakti funkcija klasėje Zmogus:
```c++
virtual std::string WhoIAm() const = 0; // abstrakti funkcija, neleidžianti kurti klasės objektų
```
##### Klasės Zmogus objektų kūrimo metu gaunamas Error'as:
![zmogaus demonstracijos error](foto/zmogaus_demonstracijos_error.png)
<details>
 <summary><strong> "Rule Of Three" </strong></summary>
 
### "Rule Of Three":
Adaptuota klasės Studentas "Rule Of Three":
 * Kopijavimo konstruktorius:
 ```c++
Studentas(const Studentas& copy):
    Zmogus(copy),
    pazymiai_(copy.pazymiai_),
    egzas_(copy.egzas_),
    rez_(copy.rez_),
    mediana_(copy.mediana_) {}
```
 * Kopijavimo priskyrimo operatorius:
```c++
Studentas& operator = (const Studentas& copy) {
    if (this != &copy) {
        Zmogus::operator=(copy);
        pazymiai_ = copy.pazymiai_;
        egzas_ = copy.egzas_;
        rez_ = copy.rez_;
        mediana_ = copy.mediana_;
    }
    return *this;
}
```
 * Destruktorius:
```c++
~Studentas() override {
    vardas_.clear();
    pavarde_.clear();
    pazymiai_.clear();
    egzas_ = 0;
    rez_ = 0.0f;
    mediana_ = 0.0f;
}
```
</details>

#### [v2.0](https://github.com/guscila/objektinis2/tree/v2.0) pokyčiai:
Versija v1.5 optimizuota; sukurtas ir pridėtas UnitTestTestavimas projektas, kuriame atlikti 5 sėkmingi testai naudojant VisualStudio integruotą testavimo sistemą; pridėta projekto [HTML dokumentacija](https://github.com/guscila/objektinis2/tree/v2.0/v0.1-naujas/html) ir LaTeX dokumentacija [PDF](https://github.com/guscila/objektinis2/blob/v2.0/v0.1-naujas/latex/2lab__LATEX_dokumentacija.pdf) formatu; sutvarkyti ir atnaujinti `CMakeLists.txt` ir `run.bat` failai.
<details>
 <summary><strong> UnitTestTestavimas </strong></summary>

### UnitTestTestavimas
#### Atlikti testai:
* DefaultConstructor - Studento klasės bazinio konstruktoriaus testas
* ParametrizedConstructor - parametruoto konstruktoriaus testas
* CopyConstructor - kopijavimo konstruktoriaus testas
* CopyAssignment - kopijavimo priskyrimo operatoriaus testas
* Getters - geterių testas
#### Testavimo kodas
[UnitTestTestavimas](https://github.com/guscila/objektinis2/blob/v2.0/UnitTestTestavimas/UnitTestTestavimas.cpp)
#### UnitTestTestavimas rezultatai:
![UnitTestTestavimoRezultatai](foto/UnitTesting.png)
</details>

## Programos failai
<details>
  <summary><strong> Failai </strong></summary>
 
### Failai:
* v1.1 - pagrindinis programos failas;
* funkcijos.h - programos funkcijų header'ių failas;
* meniu.h - meniu struktūros failas;
* studentas.h - studento struktūros failas;
* Timer.h - laiko skaičiavimo funkcijos Timer failas;
* mylib.cpp - programos funkcijų failas;
* CMakeLists.txt - programos įdiegimo instrukcijos failas;
* run.bat - programos paleidimo failas;
</details>
<details>
  <summary><strong> Formatai </strong></summary>
 
### Programos įvesties/generavimo failų formatas:
| Vardas1 | Pavarde1 | ND1 | ND2 | ... | Egz. |
|:--------|:---------|:----|:----|:----|:-----|
| Jonas | Jonaitis | 8 | 9 | ... | 9 |
#### Pavyzdys:
![įvesties/generavimo failų pavyzdys](foto/nuskaitomo_failo_pvz.png)
##### Komentaras:
```
Visi programa sugeneruoti failai buvo sukurti su 5 namų darbų pažymiais studentui.
```
### Programos išvedimo failų formatas:
| Vardas1 | Pavarde1 | Galutinis(Vid.) | Galutinis(Med.) |
|:--------|:---------|:----------------|:----------------|
| Jonas | Jonaitis | 7.80 | 8.00 |
#### Pavyzdys:
![rezultatai.txt pavyzdys](foto/rezultatai.txt_pvz.png)
### Programos rezultatų terminale formatas:
| Vardas1 | Pavarde1 | Galutinis(Vid.) | Galutinis(Med.) | Adresas |
|:--------|:---------|:----------------|:----------------|:--------|
| Jonas | Jonaitis | 7.80 | 8.00 | 0000000000A000A0 |
#### Pavyzdys:
![rezultatų terminale pavyzdys](foto/terminalo_rezultatai_pvz.png)
### Programos greičio spartos analizės rezultatų išvedimo formatas:
![rezultatųformatas](foto/rezultatupvz.png)
</details>
<details>
  <summary><strong> Programa testuoti failai </strong></summary>

### Programa testuoti failai:
* Užduotyje pateikti failai:
  * "studentai10000.txt" - 10 tūkst. studentų <br>
  * "studentai100000.txt" - 100 tūkst. studentų <br>
  * "studentai1000000.txt" - 1 mln. studentų <br>
* Programos sugeneruoti failai:
  * "1000studentu.txt" - 1 tūkst. studentų <br>
  * "10000studentu.txt" - 10 tūkst. studentų <br>
  * "100000studentu.txt" - 100 tūkst. studentų <br>
  * "1000000studentu.txt" - 1 mln. studentų <br>
  * "10000000studentu.txt" - 10 mln. studentų <br>
</details>

## Testavimo sistemos parametrai
CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz (2.42 GHz) <br>
RAM: 8.00 GB <br>
HDD: SSD 238 GB <br>

## Greičio spartos analizės:
<details>
  <summary><strong> Studento struktūros ir klasės palyginimas </strong></summary>
 
### Studento struktūros ir klasės palyginimas:
#### `struct` Studentas greičio spartos analizė:
| Failas                 | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| 100000studentu.txt     | 0,230 s             | 0,003 s                 | 0,013 s                             | 0,008 s                              | 0,218 s                                        | 0,160 s                                        |
| 1000000studentu.txt    | 2,242 s             | 0,034 s                 | 0,276 s                             | 0,186 s                              | 3,723 s                                        | 1,824 s                                        |

#### `class` Studentas greičio spartos analizė:
| Failas                 | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| 100000studentu.txt     | 0,248 s             | 0,006 s                 | 0,029 s                             | 0,021 s                              | 0,209 s                                        | 0,149 s                                        |
| 1000000studentu.txt    | 2,417 s             | 0,081 s                 | 0,347 s                             | 0,240 s                              | 2,223 s                                        | 1,466 s                                        |

#### `struct` Studentas eksperimentinė analizė:
| Failas                 | Optimizacija | Failo (*.exe*) dydis | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:-------------|:-----------------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| 100000studentu.txt     | O1           | 277 KB                 | 0,509 s             | 0,005 s                 | 0,046 s                             | 0,036 s                              | 0,536 s                                        | 0,303 s                                        |
|                        | O2           | 326 KB                 | 2,544 s             | 0,008 s                 | 0,018 s                             | 0,015 s                              | 0,456 s                                        | 0,301 s                                        |
|                        | O3           | 351 KB                 | 1,330 s             | 0,015 s                 | 0,164 s                             | 0,107 s                              | 0,940 s                                        | 0,596 s                                        |
| 1000000studentu.txt    | O1           | 277 KB                 | 5,147 s             | 0,056 s                 | 0,568 s                             | 0,354 s                              | 4,607 s                                        | 3,307 s                                        |
|                        | O2           | 326 KB                 | 4,804 s             | 0,030 s                 | 0,226 s                             | 0,183 s                              | 4,342 s                                        | 3,623 s                                        |
|                        | O3           | 351 KB                 | 12,651 s            | 0,169 s                 | 1,339 s                             | 1,054 s                              | 6,873 s                                        | 5,383 s                                        |

#### `class` Studentas eksperimentinė analizė:
| Failas                 | Optimizacija | Failo (*.exe*) dydis | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:-------------|:-----------------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| 100000studentu.txt     | O1           | 280 KB                 | 0,620 s             | 0,013 s                 | 0,097 s                             | 0,066 s                              | 0,509 s                                        | 0,308 s                                        |
|                        | O2           | 341 KB                 | 0,479 s             | 0,010 s                 | 0,059 s                             | 0,051 s                              | 0,461 s                                        | 0,373 s                                        |
|                        | O3           | 354 KB                 | 1,370 s             | 0,033 s                 | 0,202 s                             | 0,129 s                              | 0,769 s                                        | 0,503 s                                        |
| 1000000studentu.txt    | O1           | 280 KB                 | 6,093 s             | 0,193 s                 | 0,760 s                             | 0,551 s                              | 6,690 s                                        | 3,580 s                                        |
|                        | O2           | 341 KB                 | 5,043 s             | 0,137 s                 | 0,526 s                             | 0,382 s                              | 13,651 s                                       | 3,799 s                                        |
|                        | O3           | 354 KB                 | 13,066 s            | 0,359 s                 | 2,012 s                             | 1,387 s                              | 20,803 s                                       | 8,624 s                                        |

```
Studento struct is class palyginimas buvo atliktas naudojant v1.0 realizaciją gauti struct Studentas duomenims, o v1.1 realizaciją - class Studentas duomenims.
Abiejų testavimų atveju buvo naudota Strategija 3 bei vector tipo konteineris.
Visi testavimai buvo vykdomi naudojant 'Release' funkciją Visual Studio programoje Windows operacinėje sistemoje, tačiau lėtesnė greičio sparta gali būti kompiuterio fone vykdomų programų pasekmė.
```
### Studentas struktūros ir klasės palyginimo išvados:
`struct` tipas beveik visais aspektais yra greitesnis už `class` tipą. Optimizacija O2 yra optimiškiausia greičio spartos aspektu. `.exe` failo dydis progresyviai didėja su naudojama optimizacija, tačiau nepriklauso nuo testuojamų failų dydžio.
</details>
<details>
  <summary><strong> Studento kategorizacijos strategijų testavimas </strong></summary>

### Strategijos:
* Strategija 1 - Bendro studentų konteinerio kategorizacija į du naujus konteinerius: *'Kietiakai'<sup>1</sup>* ir *'Vargšiukai'<sup>2</sup>*.
* Strategija 2 - Bendro studentų konteinerio kategorizacija panaudojant tik vieną naują konteinerį: *'Vargšiukai'<sup>2</sup>*.
* Strategija 3 - Efektyvioji strategija paremta Strategija 2 bei naudojanti algoritmus siekiant optimizuoti kategorizaciją.
### Studentų kategorizacijos strategijų testavimas:
#### Strategija 1
| Failas                 | Vector   | List     |
|:-----------------------|:---------|:---------|
| studentai10000.txt     | 0,004 s  | 0,003 s  |
| studentai100000.txt    | 0,038 s  | 0,030 s  |
| studentai1000000.txt   | 0,391 s  | 0,282 s  |
|                        |          |          |
| 1000studentu.txt       | 0,0004 s | 0,0003 s |
| 10000studentu.txt      | 0,008 s  | 0,002 s  |
| 100000studentu.txt     | 0,034 s  | 0,034 s  |
| 1000000studentu.txt    | 0,422 s  | 0,310 s  |
| 10000000studentu.txt   | 7,633 s  | 8,811 s  |

#### Strategija 2
| Failas                 | Vector   | List     |
|:-----------------------|:---------|:---------|
| studentai10000.txt     | 0,001 s  | 0,001 s  |
| studentai100000.txt    | 0,008 s  | 0,005 s  |
| studentai1000000.txt   | 0,232 s  | 0,060 s  |
|                        |          |          |
| 1000studentu.txt       | 0,0001 s | 0,0001 s |
| 10000studentu.txt      | 0,001 s  | 0,001 s  |
| 100000studentu.txt     | 0,011 s  | 0,006 s  |
| 1000000studentu.txt    | 0,103 s  | 0,061 s  |
| 10000000studentu.txt   | 1,115 s  | 0,755 s  |
```
Išvados: Pirmų dviejų studentų kategorizacijos strategijų spartos panašios, tačiau antroji šiek tiek spartesnė už pirmąją. Antrosios strategijos pagrindu buvo sukurta trečioji strategija.
```
#### Strategija 3
| Failas                 | Vector    | List        |
|:-----------------------|:----------|:------------|
| studentai10000.txt     | 0,0002 s  | 0,00009 s   |
| studentai100000.txt    | 0,003 s   | 0,009 s     |
| studentai1000000.txt   | 0,040 s   | 0,116 s     |
|                        |           |             |
| 1000studentu.txt       | 0,00003 s | 0,0001 s    |
| 10000studentu.txt      | 0,0002 s  | 0,001 s     |
| 100000studentu.txt     | 0,004 s   | 0,012 s     |
| 1000000studentu.txt    | 0,036 s   | 0,134 s     |
| 10000000studentu.txt   | 0,425 s   | 1,350 s     |
```
Studentų kategorizacijos strategijų testavimas buvo atliktas naudojant v1.0 realizaciją.
```
### Studentų kategorizacijos strategijų testavimo išvados:
Pritaikius `std::partition` ir `std::make_move_iterator` algoritmus buvo sukurta Strategija 3 paremta antrosios strategijos pagrindu. Trečioji strategija yra spartesnė ir efektyvesnė dirbant su vektoriaus tipo konteineriais, tačiau susiduria su sunkumais dirbant su didesniais failais. Nepaisant to, Strategija 3 yra efektyviausia iš visų testuotų strategijų.
</details>
<details>
  <summary> v0.3 greičio spartos analizė </summary>
 
### v0.3 greičio spartos analizė
### Testavimo laikai veiksmus atliektant su vektoriaus (vector) konteineriu:
| Failas                 | Failo sukūrimas | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:----------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| studentai10000.txt     | -               | 0,055 s             | 0,003 s                 | 0,004 s                             | 0,001 s                              | 0,023 s                                        | 0,018 s                                        |
| studentai100000.txt    | -               | 0,658 s             | 0,026 s                 | 0,014 s                             | 0,008 s                              | 0,226 s                                        | 0,155 s                                        |
| studentai1000000.txt   | -               | 3,080 s             | 0,249 s                 | 0,256 s                             | 0,179 s                              | 2,228 s                                        | 1,523 s                                        |
|                        |                 |                     |                         |                                     |                                      |                                                |                                                |
| 1000studentu.txt       | 0.011 s         | 0,0045 s            | 0,0003 s                | 0,0001 s                            | 0,0001 s                             | 0,0036 s                                       | 0,0037 s                                       |
| 10000studentu.txt      | 0.043 s         | 0,023 s             | 0,003 s                 | 0,001 s                             | 0,001 s                              | 0,022 s                                        | 0,018 s                                        |
| 100000studentu.txt     | 0.435 s         | 0,235 s             | 0,022 s                 | 0,013 s                             | 0,009 s                              | 0,216 s                                        | 0,148 s                                        |
| 1000000studentu.txt    | 4.323 s         | 2,248 s             | 0,241 s                 | 0,26 s                              | 0,179 s                              | 2,672 s                                        | 1,579 s                                        |
| 10000000studentu.txt   | 42.89 s         | 22,458 s            | 3,067 s                 | 3,213 s                             | 2,09 s                               | 25,029 s                                       | 15,467 s                                       |
<br>
### Testavimo laikai veiksmus atliektant su sąrašo (list) konteineriu:
| Failas                 | Failo sukūrimas | Duomenų nuskaitymas | Studentų kategorizacija | *'Kietiakų'<sup>1</sup>* rūšiavimas | *'Vargšiukų'<sup>2</sup>* rūšiavimas | Išvedimas į failą (*'Kietiakai'<sup>1</sup>*)  | Išvedimas į failą (*'Vargšiukai'<sup>2</sup>*) |
|:-----------------------|:----------------|:--------------------|:------------------------|:------------------------------------|:-------------------------------------|:-----------------------------------------------|:-----------------------------------------------|
| studentai10000.txt     | -               | 0,054 s             | 0,002 s                 | 0,001 s                             | 0,001 s                              | 0,025 s                                        | 0,018 s                                        |
| studentai100000.txt    | -               | 0,443 s             | 0,022 s                 | 0,013 s                             | 0,009 s                              | 0,22 s                                         | 0,159 s                                        |
| studentai1000000.txt   | -               | 3,010 s             | 0,183 s                 | 0,270 s                             | 0,189 s                              | 2,483 s                                        | 1,566 s                                        |
|                        |                 |                     |                         |                                     |                                      |                                                |                                                |
| 1000studentu.txt       | 0.011 s         | 0,0036 s            | 0,0002 s                | 0,0001 s                            | 0,0001 s                             | 0,0047 s                                       | 0,0039 s                                       |
| 10000studentu.txt      | 0.043 s         | 0,023 s             | 0,002 s                 | 0,001 s                             | 0,001 s                              | 0,024 s                                        | 0,017 s                                        |
| 100000studentu.txt     | 0.435 s         | 0,212 s             | 0,018 s                 | 0,013 s                             | 0,008 s                              | 0,223 s                                        | 0,154 s                                        |
| 1000000studentu.txt    | 4.323 s         | 2,124 s             | 0,188 s                 | 0,268 s                             | 0,186 s                              | 2,908 s                                        | 1,626 s                                        |
| 10000000studentu.txt   | 42.89 s         | 22,238 s            | 3,18 s                  | 4,37 s                              | 3,424 s                              | 22,535 s                                       | 15,912 s                                       |

##### Komentaras:
```
Greičio spartos analizės lentelėse pateikti 3 testavimų laikų vidurkiai.
Greičio spartos analizė buvo atlikta naudojant v0.3 realizaciją.
```
### v0.3 greičio spartos analizės išvados:
Atlikus greičio spartos analizę galime matyti, kad abiejų konteinerių greičio spartos rezultatai yra labai panašūs. Tačiau sąrašo tipo konteineris (list) sparčiau atlieka duomenų nuskaitymą iš failo bei šių duomenų kategorizaciją. Tuo tarpu vektoriaus tipo konteineris (vector) yra spartesnis duomenis išvedant į failą. <br>
</details>
