sol(S) :-
  S = [
    jan-ReactorJan-PrincipleJan-CountryJan,
    feb-ReactorFeb-PrincipleFeb-CountryFeb,
    mar-ReactorMar-PrincipleMar-CountryMar,
    apr-ReactorApr-PrincipleApr-CountryApr
  ],

  permutation([dynotis, comati, adtina, tamura], [ReactorJan, ReactorFeb, ReactorMar, ReactorApr]),
  permutation([tp, fusor, dd, poly], [PrincipleJan, PrincipleFeb, PrincipleMar, PrincipleApr]),
  permutation([qatar, ecuador, zambia, france], [CountryJan, CountryFeb, CountryMar, CountryApr]),

% условие 1
  (member(mar-_-Principle1-Country1, S),
  (Country1 = france; Principle1 = dd)),

% условие 2
  (member(Month2-comati-_-_, S),
  Month2 \= jan),

% условие 3
  (member(Month31-_-tp-Country31, S),
  Month31 \= mar, Country31 \= zambia,
  member(mar-_-Principle32-Country32, S),
  Principle32 \= tp, Country32 \= zambia),

% условие 4
  (member(jan-_-Principle4-Country4, S),
  (Country4 = qatar; Principle4 = tp)),

% условие 5
  ((member(Month51-Reactor51-tp-Country51, S),
  Month51 \= feb, (Reactor51 = comati; Country51 = ecuador)),
  (member(feb-Reactor52-Principle52-Country52, S),
  Principle52 \= tp, (Reactor52 = comati; Country52 = ecuador))),

% условие 6
  (member(_-tamura-_-zambia, S)),

% условие 7
  (member(Month71-Reactor71-fusor-_, S),
  Month71 \= apr, Reactor71 \= adtina,
  member(apr-Reactor72-Principle72-_, S),
  Principle72 \= fusor, Reactor72 \= adtina),

% условие 8
  (member(Month8-Reactor8-_-qatar, S),
  (Reactor8 = dynotis; Month8 = mar)).