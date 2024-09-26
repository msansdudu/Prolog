sol(S) :-
  S = [
    jan-ReactorJan-PrincipleJan-CountryJan,
    feb-ReactorFeb-PrincipleFeb-CountryFeb,
    mar-ReactorMar-PrincipleMar-CountryMar,
    apr-ReactorApr-PrincipleApr-CountryApr
  ],

  Solution = [
    reactor(jan, ReactorJan, PrincipleJan, CountryJan),
    reactor(feb, ReactorFeb, PrincipleFeb, CountryFeb),
    reactor(mar, ReactorMar, PrincipleMar, CountryMar),
    reactor(apr, ReactorApr, PrincipleApr, CountryApr)
  ],

  permutation([dynotis, comati, adtina, tamura], [ReactorJan, ReactorFeb, ReactorMar, ReactorApr]),
  permutation([tp, fusor, dd, poly], [PrincipleJan, PrincipleFeb, PrincipleMar, PrincipleApr]),
  permutation([qatar, ecuador, zambia, france], [CountryJan, CountryFeb, CountryMar, CountryApr]),

% условие 1
  (member(reactor(mar, _, Principle1, Country1), Solution),
  (Country1 = france; Principle1 = dd)),

% условие 2
  (member(reactor(Month2, comati, _, _), Solution),
  Month2 \= jan),

% условие 3
  (member(reactor(Month31, _, tp, Country31), Solution),
  Month31 \= mar, Country31 \= zambia,
  member(reactor(mar, _, Principle32, Country32), Solution),
  Principle32 \= tp, Country32 \= zambia),

% условие 4
  (member(reactor(jan, _, Principle4, Country4), Solution),
  (Country4 = qatar; Principle4 = tp)),

% условие 5
  ((member(reactor(Month51, Reactor51, tp, Country51), Solution),
  Month51 \= feb, (Reactor51 = comati; Country51 = ecuador)),
  (member(reactor(feb, Reactor52, Principle52, Country52), Solution),
  Principle52 \= tp, (Reactor52 = comati; Country52 = ecuador))),

% условие 6
  (member(reactor(_, tamura, _, zambia), Solution)),

% условие 7
  (member(reactor(Month71, Reactor71, fusor, _), Solution),
  Month71 \= apr, Reactor71 \= adtina,
  member(reactor(apr, Reactor72, Principle72, _), Solution),
  Principle72 \= fusor, Reactor72 \= adtina),

% условие 8
  (member(reactor(Month8, Reactor8, _, qatar), Solution),
  (Reactor8 = dynotis; Month8 = mar)).